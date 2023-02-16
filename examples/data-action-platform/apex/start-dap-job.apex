// PREPARE INPUT
plauti__dapApexApiV1.RunMacroJobOnRecordsInput input = new plauti__dapApexApiV1.RunMacroJobOnRecordsInput();
input.flowInvokerReference = 'yourClassName'; // Shown in the dap record audit log to indicate what invoked the flow that executed the action
input.dapMacroApiName = 'macro-youMacro'; // Your action's apiName prefixed with "macro-"
input.recordIds = new List<Id>{
	Id.valueOf('a0P17000005cSNgEAM'), 
	Id.valueOf('a0P17000005cSNgEAM')
}; // Id of the records that will be provided to your macro 
// ^ The object type of these recordIds should be the same object type that is configured in the macro

// RUN DAP ACTION ASYNCHRONOUSLY ON A COLLECTION OF RECORDS
plauti__dapApexApiV1 dapApexApi = new plauti__dapApexApiV1();
try {
    plauti__dapApexApiV1.RunMacroJobOnRecordsOutput output = dapApexApi.runMacroJobOnRecords(input);
	Id dapFlowId = output.dapFlowId; // Should be used to get the satus of the dap job
} catch (plauti__dapApexApiV1.dapApiInternalException e) {
	System.debug('Internal DAP exception. Please contact plauti suport. ' + e.getMessage());
} catch (plauti__dapApexApiV1.dapApiExternalException e) {
	System.debug('External DAP exception. Please check the provided input. ' + e.getMessage());
} catch (Exception e) {
	System.debug('Exception. Please contact your SalesForce admin. ' + e.getMessage());
}
