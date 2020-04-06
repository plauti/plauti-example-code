public with sharing class TestDataController {
    public TestDataController() {

    }

    public Pagereference resetOrg() {
        new TestData().resetOrg();
        return null;
    }

    public Pagereference emptyOrg() {
        new TestData().emptyOrg();
        return null;
    }

    public Pagereference createLeads() {
        new Testdata().createLeads();
        return null;
    }
}
