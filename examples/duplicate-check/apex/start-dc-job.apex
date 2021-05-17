dupcheck__dcJob__c jobData = new dupcheck__dcJob__c(
    dupcheck__name__c = 'My Apex DC Job', // Your own name
	dupcheck__type__c = 'search', // DO not change this
	dupcheck__sourceObject__c = '001', // the source object
	dupcheck__matchObject__c = '001', // the match object
	dupcheck__status__c = 'Holding', // Do not Change this
	dupcheck__filterOn__c = null, // do not change this
    dupcheck__scenario__c = 'a0P17000005cSNgEAM' // List of scenarioIds, seperated by a ,
);

// If you would like to add a filter, add the following code;
/*
jobData.dupcheck__filterWith__c = 'all';
jobData.dupcheck__filterOn__c = 'filter';
jobData.dupcheck__filter__c = '(BillingCountry = \'nl\')';
*/


// INSERT JOB DEFINITION
insert jobData;

// START JOB FOR PROCESSING
Id apexJobIb = database.executeBatch(new dupcheck.dc3SearchBatch(jobData.Id),5);

// ADD Apex Job Id to job definiton
update new dupcheck__dcJob__c(Id = jobData.Id, dupcheck__apex__c = apexJobIb);
