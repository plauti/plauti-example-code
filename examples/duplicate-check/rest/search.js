var helper = require('../../helper');

var process = async function(){
    
    var con = await helper.getConnection();
    var result = await con.apex.post('/dupcheck/dc3Api/search',{
        'objectPrefix': '00Q',
        'objectData': {
          'FirstName': 'Jenniffer',
        }
    });
    console.dir(result, { depth: null });

}
process();

