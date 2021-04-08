recordval.RecordValidationAPI_v1 api = new recordval.RecordValidationAPI_v1();

recordval.AddressFindInput_v1 input = new recordval.AddressFindInput_v1();
input.address = 'Stationsplein 15 Amsterdam'; 
input.country = ''; // optional
input.note = 'demo'; // optional
input.container = ''; // optional: to retrieve sub-addresses in a street container suggestion.


recordval.AddressFindOutput_v1 output = api.findAddress(input);

for (AddressFindOutputItem_v1 a : output.suggestions) {
   System.debug(LoggingLevel.DEBUG, JSON.serialize(a)); 
}

System.debug(LoggingLevel.DEBUG, output.status);