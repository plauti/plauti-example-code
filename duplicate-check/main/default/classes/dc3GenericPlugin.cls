global class dc3GenericPlugin implements dupcheck.dc3PluginInterface {

    private static Set<String> implementedEvents = new Set<String>{'MERGE_SET_MASTER', 'MERGE_SET_FIELD'};

    global Boolean isAvailable(dupcheck.dc3Plugin.PluginEventType eventType) {
        return dc3GenericPlugin.implementedEvents.contains(eventType.name());
    }

    global Object execute(dupcheck.dc3Plugin.PluginEventType eventType, Object eventData) {
        switch on eventType {
            when MERGE_SET_MASTER {
                return this.mergeSetMaster((dupcheck.dc3PluginModel.MergeSetMasterInput) eventData);
            }
            when MERGE_SET_FIELD {
                return this.mergeSetField((dupcheck.dc3PluginModel.MergeSetFieldInput) eventData);
            }
            when else {
                return null;
            }
        }
    }

    public dupcheck.dc3PluginModel.MergeSetMasterOutput mergeSetMaster(dupcheck.dc3PluginModel.MergeSetMasterInput input) {

        dupcheck.dc3PluginModel.MergeSetMasterOutput output = new dupcheck.dc3PluginModel.MergeSetMasterOutput(input);
        if (input.objectPrefix == '00Q') {

            for (Sobject ld : input.objectDataList) {
                Lead leadData = (Lead) ld;


                if (leadData.FirstName == 'MASTER') {
                    output.masterRecordId = leadData.Id;
                    break;
                }
            }
        }
        return output;

    }
    
    public dupcheck.dc3PluginModel.MergeSetFieldOutput mergeSetField(dupcheck.dc3PluginModel.MergeSetFieldInput input) {

        dupcheck.dc3PluginModel.MergeSetFieldOutput output = new dupcheck.dc3PluginModel.MergeSetFieldOutput(input);
        if (input.objectPrefix == '00Q') {
            
            for (String fieldName : input.fieldSourceMap.keySet()) {

                if (fieldName == 'FirstName') {
                    
                    String longestValue = '';
                    
                    // Take the longest FirstName value. 
                    for (Sobject objectData : input.objectDataList) {
                        if (objectData.get(fieldName) == null) {
                            continue;
                        }
                        String value = String.valueOf(objectData.get(fieldName));
                        if (value.length() > longestValue.length()) {
                            longestValue = value;
                            output.fieldSourceMap.put(fieldName, objectData.Id);
                        }
                    }
                } else if (fieldName == 'Website') {
                    // Take the value of the master record
                    output.fieldSourceMap.put(fieldName, input.masterRecordId);
                } else if (fieldName == 'AnnualRevenue') {
                    
                    // Add all annual revenues and set this as a custom value.

                    Integer totalRevenue = 0;
                    for (Sobject objectData : input.objectDataList) {
                        if (objectData.get(fieldName) == null) {
                            continue;
                        }
                        totalRevenue = totalRevenue + Integer.valueOf(objectData.get(fieldName));
                    }
                    
                    // Set a custom value for the email field
                    output.fieldSourceMap.put(fieldName, 'custom');
                    output.customValueMap.put(fieldName, totalRevenue);
                } 
            }

        } 
        
        return output;
    }
}