var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/phone/validate', {
                "phoneNumber": "02620   22   0  1 ..-- 5",
                "country": "NL",
                "note": "demo",
                "format": "E164"
              
    });
    console.dir(result, { depth: null });

}
process();

