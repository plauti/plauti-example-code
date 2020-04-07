recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();
 
recordval.AddressValidationInput_v1 input = new recordval.AddressValidationInput_v1();
input.street = 'Velperweg 8';
input.country = 'NL';
input.note = 'demo';
 
recordval.AddressValidationOutput_v1 output = api.validateAddress(input);
System.debug(LoggingLevel.DEBUG, output.advice);
System.debug(LoggingLevel.DEBUG, output.addresses.get(0).advice);
System.debug(LoggingLevel.DEBUG, output.addresses.get(0).fullAddress);