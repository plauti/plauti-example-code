@isTest
private class Test_dc3CaseTrigger {
    
    static testMethod void Test_InsertCase() {
        
        Case c = new Case();
        // Add all fields which are required to insert the record. For example;
        
        c.Status = 'New';
        c.Origin = 'Web';

        insert c;
        system.assert(c.Id != null);
    
    }
}