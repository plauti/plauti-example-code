var jsforce = require('jsforce');
var child_process = require('child_process');
fs = require('fs');

var helper = {};


helper.getConnection = async function() {
    
    if (await fs.existsSync('./loginData.json')) {
        var stat = await fs.statSync('./loginData.json');
        var dif = Math.round((new Date().getTime() - stat.mtime.getTime()) / 60000);
        
        if (dif > 60) {
            await child_process.execSync('sfdx force:org:display --json > ./loginData.json');
        }
    } else {
        await child_process.execSync('sfdx force:org:display --json > ./loginData.json');
    }
    
    var jsonString = await fs.readFileSync('./loginData.json');
    var json = JSON.parse(jsonString);
    
    var sfcon = new jsforce.Connection({
        serverUrl: json.result.instanceUrl,
        sessionId: json.result.accessToken
    });
    return sfcon;
}



module.exports = helper;
