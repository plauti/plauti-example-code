@isTest
private class Test_MergeSetMaster {
    
    
    static testMethod void TestMergeSetMaster() {

        Lead ld1 = new Lead(FirstName='Test', LastName='The Tester', Company='Plauti B.V.');
        Lead ld2 = new Lead(FirstName='MASTER', LastName='The Tester', Company='Plauti B.V.');

        insert ld1;
        insert ld2;

        dupcheck.dc3PluginModel.MergeSetMasterInput input = new dupcheck.dc3PluginModel.MergeSetMasterInput();
        input.objectPrefix = '00Q';
        input.objectDataList = new List<Sobject>{ld1, ld2};
        input.masterRecordId = ld1.Id;

        dc3GenericPlugin plugin = new dc3GenericPlugin();
        dupcheck.dc3PluginModel.MergeSetMasterOutput pluginResult = (dupcheck.dc3PluginModel.MergeSetMasterOutput) plugin.execute(upcheck.dc3Plugin.PluginEventType.MERGE_SET_MASTER, input);
        system.assertEquals(ld2.Id, pluginResult.masterRecordId);
    
    }
}
