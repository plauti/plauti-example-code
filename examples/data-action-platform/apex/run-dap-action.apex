// PREPARE INPUT
plauti__dapApexApiV1.RunMacroOnRecordInput input = new plauti__dapApexApiV1.RunMacroOnRecordInput();
input.flowInvokerReference = 'yourClassName'; // Shown in the dap record audit log to indicate what invoked the flow that executed the action
input.dapMacroApiName = 'macro-youMacro'; // Your action's apiName prefixed with "macro-"
input.recordId = Id.valueOf('a0P17000005cSNgEAM'); // Id of the record that will be provided to your macro 
// ^ The object type of this recordId should be the same object type that is configured in the macro

// RUN DAP ACTION SYNCHRONOUSLY ON A SINGLE RECORD
plauti__dapApexApiV1 dapApexApi = new plauti__dapApexApiV1();
try {
    plauti__dapApexApiV1.RunMacroOnRecordOutput output = dapApexApi.runMacroOnRecord(input);
} catch (plauti__dapApexApiV1.dapApiInternalException e) {
	System.debug('Internal DAP exception. Please contact plauti suport. ' + e.getMessage());
} catch (plauti__dapApexApiV1.dapApiExternalException e) {
	System.debug('External DAP exception. Please check the provided input. ' + e.getMessage());
} catch (Exception e) {
	System.debug('Exception. Please contact your SalesForce admin. ' + e.getMessage());
}
