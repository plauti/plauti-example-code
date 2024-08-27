var helper = require('../../helper');

var process = async function () {
    var con = await helper.getConnection();
    var result = await con.apex.post('/recordval/v1/address/retrieve', {
        container: 'GB|RM|B|728895', // the container from the address find api endpoint.
        note: 'demo',
        addressOptions: {
            geocode: false
        }
    });
    console.dir(result, {depth: null});
};
process();
