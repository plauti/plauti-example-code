recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();

recordval.EmailValidationInput_v1 input = new recordval.EmailValidationInput_v1();
input.emailAddress = 'demo@plauti.com';
input.note = 'demo';


recordval.EmailValidationOutput_v1 output = api.validateEmail(input);
System.debug(LoggingLevel.DEBUG, output.advice);
System.debug(LoggingLevel.DEBUG, output.status);