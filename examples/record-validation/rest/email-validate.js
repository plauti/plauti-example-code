var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/email/validate', {
                "emailAddress": "sten@mailinator.com",
                "note": "demo"
              
    });
    console.dir(result, { depth: null });

}
process();

