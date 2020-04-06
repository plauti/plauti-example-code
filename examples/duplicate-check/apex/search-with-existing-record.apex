// ## 1. Search with an existng object.

// #### Fetch lead Id from Salesforce.  
List<Lead> leadList = [Select Id FROM Lead WHERE FirstName = 'Jeniffer' LIMIT 1];

// #### Exexute Search
Map<String, List<dupcheck.dc3SearchResult>> searchResult = new dupcheck.dc3Api().doSearch(leadList[0].Id); 

// #### Debug Results.
if (searchResult.containsKey('00Q')) { 
    for (String p : searchResult.keySet()){
        for (dupcheck.dc3SearchResult firstLeadDuplicate : searchResult.get(p)) {
            system.debug('\n\n' + firstLeadDuplicate.score 
                + ' - ' + firstLeadDuplicate.getObjectName() 
                + ' - ' + firstLeadDuplicate.getObjectPrefix()
                + ' - ' + firstLeadDuplicate.getDisplayField()
                + ' - ' + firstLeadDuplicate.scenarioScores
                + ' - ' + firstLeadDuplicate.objectData
                + '\n' );
        } 
    }  
} else {
    system.debug('No duplicate results for this Lead.');
}