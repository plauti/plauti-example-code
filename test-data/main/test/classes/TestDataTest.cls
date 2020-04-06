@isTest
public class TestDataTest {
    
    @isTest
    static void test_testdata_reset() {
        TestDataController c = new TestDataController();
        c.resetOrg();
        system.assertEquals(16, [select id from Lead limit 100].size());
    }

    @isTest
    static void test_testdata_empty() {
        TestDataController c = new TestDataController();
        c.emptyOrg();
        system.assertEquals(0, [select id from Lead limit 100].size());
        c.createLeads();
        system.assertEquals(16, [select id from Lead limit 100].size());
    }

}
