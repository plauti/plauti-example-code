global class dc3MergePlugin implements dupcheck.dc3Plugin.InterfaceMerge {

    global void beforeMerge(String objectPrefix, Sobject masterRecord, List <sobject> mergedRecordList) {
        /*
            objectPrefix = the 3 character object indication. Lead = 00Q etc..
            masterRecord = contains the field values which are beining updated in the master record when the merge executes. These values can be set. 
            mergedRecordList = contains the records which are going to be merged in to the master record. 

            If you want to process the merge as normal, but do not want to execute the merge itself. You can throw the dupcheck.dc3Exception.NoProcessException();
        */

        if (objectPrefix.equals('00Q')) {

            Set<Id> allIds = new Set<Id>{masterRecord.Id};
            for (Sobject leadObject : mergedRecordList) {
                allIds.add(leadObject.Id);
            }

            // ADD up Annual revenue
            integer totalAnnualRevenue = 0;
            List<Lead> leadList = [SELECT Id, AnnualRevenue FROM Lead WHERE Id IN :allIds];
            for (Lead l : leadList) {
                if (l.AnnualRevenue != null) {
                    totalAnnualRevenue = totalAnnualRevenue + l.AnnualRevenue.intValue();
                }
            }
            masterRecord.put('AnnualRevenue', totalAnnualRevenue);


        } else if (objectPrefix.equals('001')) {
            
            // GET VALUE FROM MANUALLY INPUT ON MERGE PAGE
            Set<String> descriptionSet = new Set<String>();
            if (masterRecord.get('Description') != null) {
                descriptionSet.add((String) masterRecord.get('Description'));
            }
            
            // GET CURRENT VALUE OF MASTER RECORD
            Account masterAccount = [Select Id, Description FROM Account WHERE Id =:masterRecord.Id];
            if (String.isNotBlank(masterAccount.Description)) {
                descriptionSet.add(masterAccount.Description);
            }

            // GET VALUES FROM LOSER RECORDS
            for (Account loserAccount : (List<Account>) mergedRecordList) {
                if (String.isNotBlank(loserAccount.Description)) {
                    descriptionSet.add(loserAccount.Description);
                }
            }
    
            if (!descriptionSet.isEmpty()) {
                masterRecord.put('Description',String.join(new List<String>(descriptionSet), '; '));
            }
    
        }
        return;
    }
 
    global void mergeFailed(String objectPrefix, Sobject masterRecord, Set < id > mergedRecordsIds, dupcheck.dc3Exception.MergeException exceptionData) {
       // YOUR CUSTOM CODE
       return;
    }
 
    global void afterMerge(String objectPrefix, Sobject masterRecord, Set < id > mergedRecordIds) {
        
        if (objectPrefix.equals('00Q')) {
            // SEND EMAIL WHEN RECORDS ARE MERGED
            
            List<Lead> leadList = [SELECT Id, Name, Owner.Email FROM Lead WHERE Id = :masterRecord.Id];
            if (leadList.size() == 1 && leadList[0].Owner.Email != null) {
                Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
                message.toaddresses = new String[] {leadList[0].Owner.Email};
                message.subject = 'Lead ' + leadList[0].Name + ' is merged with ' + mergedRecordIds.size() + ' other Leads';
                message.plainTextBody = 'Merged with : ' + JSON.serialize(mergedRecordIds);
                Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
                Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
            }

        }

        return;
    }
 }