var helper = require('../../helper');

var process = async function () {
    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/address/validate', {
        street: 'Velperweg 8 arnhem',
        country: 'NL',
        note: 'demo',
        addressOptions: {
            geocode: false
        }
    });
    console.dir(result, {depth: null});
};
process();
