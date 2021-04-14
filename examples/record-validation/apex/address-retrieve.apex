recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();

recordval.AddressRetrieveInput_v1 input = new recordval.AddressRetrieveInput_v1();
input.note = 'demo';
input.container = 'NL|AV|A|B8348'; // the container from the address find api endpoint. 


recordval.AddressRetrieveOutput_v1 output = api.retrieveAddress(input);

System.debug(LoggingLevel.DEBUG, output.Address); 
System.debug(LoggingLevel.DEBUG, output.status);