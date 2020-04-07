recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();

recordval.PhoneValidationInput_v1 input = new recordval.PhoneValidationInput_v1();
input.phoneNumber = '0031-345677733'; 
input.country = 'NL'; 
input.format = recordval.PhoneFormat_v1.INTERNATIONAL;
input.note = 'demo';

recordval.PhoneValidationOutput_v1 output = api.validatePhone(input); 
System.debug(LoggingLevel.DEBUG, output.advice);
System.debug(LoggingLevel.DEBUG, output.status); 
System.debug(LoggingLevel.DEBUG, output.phoneNumber);