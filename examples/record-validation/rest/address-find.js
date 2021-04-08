var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/address/find', {
        "address": 'Stationsplein 15 Amsterdam', 
        "note": "demo", 
        "country": "", //optional
        "container": "" // optional: to retrieve sub-addresses in a street container suggestion.
    });
    console.dir(result, { depth: null });

}
process();

