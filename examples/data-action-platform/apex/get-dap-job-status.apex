// PREPARE INPUT
plauti.dapApexApiV1.GetDapJobStatusInput input = new plauti.dapApexApiV1.GetDapJobStatusInput();
input.dapFlowId = 'My Apex DC Job'; // Id of a dap flow which is received in RunMacroJobOnRecordsOutput

// GET DAP JOB STATUS
plauti.dapApexApiV1 dapApexApi = new plauti.dapApexApiV1();
try {
    plauti.dapApexApiV1.GetDapJobStatusOutput output = dapApexApi.getDapJobStatus(input);
} catch (plauti.dapApexApiV1.dapApiInternalException e) {
	System.debug('Internal DAP exception. Please contact plauti suport. ' + e.getMessage());
} catch (plauti.dapApexApiV1.dapApiExternalException e) {
	System.debug('External DAP exception. Please check the provided input. ' + e.getMessage());
} catch (Exception e) {
	System.debug('Exception. Please contact your SalesForce admin. ' + e.getMessage());
}
