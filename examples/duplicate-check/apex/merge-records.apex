// First fetch all records with all fields.

List<String> fieldList = new List<String>();
fieldList.addAll(Lead.sObjectType.getDescribe().fields.getMap().keySet());
List<Lead> leadList = Database.query('SELECT ' + string.join(fieldList, ',') + ' FROM Lead WHERE FirstName = \'IRMA\'');

// execute merge
Boolean isMerge = new dupcheck.dc3Api().doMerge(leadList);
system.debug('Record are Merged? : ' + isMerge);
