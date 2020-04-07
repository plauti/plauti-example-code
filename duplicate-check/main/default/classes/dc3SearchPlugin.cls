global class dc3SearchPlugin implements dupcheck.dc3Plugin.InterfaceSearch {
    global void processResults(String methodName, Id sourceId, Map<String, List<dupcheck.dc3SearchResult>> searchResults) {
       
        if (sourceId == null) {
            return;
        }
        
        system.debug(LoggingLevel.ERROR, sourceId.getSobjectType().getDescribe().getKeyPrefix() + '  ' +  methodName);

        if (sourceId.getSobjectType().getDescribe().getKeyPrefix().equalsIgnoreCase('00Q') && methodName.containsIgnoreCase('ON_LAYOUT')) {
            
            Task t = new Task();
            t.Subject = 'Duplicate Found';
            t.WhoId = sourceId;
            t.Description = 'Duplicates Found';
            try {
                insert t;
            } catch (DmlException e) {
                system.debug(LoggingLevel.ERROR, e.getMessage());
            }
            

        }
    
        return;
    }
 }
