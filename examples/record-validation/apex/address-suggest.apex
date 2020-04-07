recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();

recordval.AddressSuggestInput_v1 input = new recordval.AddressSuggestInput_v1();
input.address = 'Velper'; 
input.country = 'NL';
input.note = 'demo';


recordval.AddressSuggestOutput_v1 output = api.suggestAddress(input);

for (String a : output.suggestions) {
   System.debug(LoggingLevel.DEBUG, a); 
}

System.debug(LoggingLevel.DEBUG, output.status);