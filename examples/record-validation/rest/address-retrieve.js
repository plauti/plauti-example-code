var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/address/retrieve', {
        "container": 'NL|AV|A|B8348', // the container from the address find api endpoint. 
        "note": "demo", 
    });
    console.dir(result, { depth: null });

}
process();

