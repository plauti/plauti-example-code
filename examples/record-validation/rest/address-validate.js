var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/address/validate', {
                "street": "Velperweg 8",
                "country": "NL",
                "note": "demo"
              
    });
    console.dir(result, { depth: null });

}
process();

