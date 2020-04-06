var jsforce = require('jsforce');
var child_process = require('child_process');


var helper = {};


helper.getConnection = async function() {

    var sfdxJson  = await child_process.execSync('sfdx force:org:display --json');
    var jsonString = sfdxJson.toString('utf8');
    var json = JSON.parse(jsonString);
    
    var sfcon = new jsforce.Connection({
        serverUrl: json.result.instanceUrl,
        sessionId: json.result.accessToken
    });
    return sfcon;
}



module.exports = helper;
