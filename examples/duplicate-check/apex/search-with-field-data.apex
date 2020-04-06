// ## 1. Search with an existng object.

// #### Create data to search with
Map<String, Object> searchData = new Map<String, Object>();
searchData.put('FirstName', 'Jennifer');

// #### Exexute Search
Map<String, List<dupcheck.dc3SearchResult>> searchResult = new dupcheck.dc3Api().doSearch(searchData, '00Q'); 

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