@isTest
private class Test_MergeSetField {
    
    
    static testMethod void TestMergeSetField() {

        Lead ld1 = new Lead(FirstName='Test', LastName='The Tester', Company='Plauti B.V.');
        Lead ld2 = new Lead(FirstName='MASTER', LastName='The Tester', Company='Plauti B.V.');

        insert ld1;
        insert ld2;

        dupcheck.dc3PluginModel.MergeSetFieldInput input = new dupcheck.dc3PluginModel.MergeSetFieldInput();
        input.objectPrefix = '00Q';
        input.objectDataList = new List<Sobject>{ld1, ld2};
        input.masterRecordId = ld1.Id;
        input.fieldSourceMap = new Map<String, String>();
        input.fieldSourceMap.put('FirstName', ld1.Id);


        dc3GenericPlugin plugin = new dc3GenericPlugin();
        dupcheck.dc3PluginModel.MergeSetFieldOutputpluginResult = (dupcheck.dc3PluginModel.MergeSetFieldOutput) plugin.execute(upcheck.dc3Plugin.PluginEventType.MERGE_SET_FIELD, input);
        system.assertEquals(ld2.Id, pluginResult.fieldSourceMap.get('FirstName'));
    
    }
}
