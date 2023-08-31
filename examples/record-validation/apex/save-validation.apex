// Assuming recordId contains a valid record Id on which to store the results
Id recordId = '';

// Assuming that output contains an Phone/Email/AddressValidationOutput_v1 object saved in a variable `output`.
recordval.PhoneValidationOutput_v1 output;

// Assuming that fieldname contains a fieldApi name that is used in the mapping of a validation configuration in RV setup
String fieldName = '';

recordval.rv2SaveValidationResultInput_v1 input = new recordval.rv2SaveValidationResultInput_v1();
input.setRecordId(recordId);
input.setValidationResult(fieldName, output);
recordval.rv2SaveValidationResultsOutput_v1 result = api.saveValidationResult(input);

System.debug(LoggingLevel.debug, result.recordId);
System.debug(LoggingLevel.debug, result.success);