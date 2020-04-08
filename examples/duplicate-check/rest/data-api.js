var helper = require('../../helper');

var process = async function () {

    var con = await helper.getConnection();
    var result = await con.apex.post('/dupcheck/dc3DataApi', {
        'input': {
            'allOrNone': true,
            'duplicateCheck': true,
            'duplicateScore': 75,
            'objectType': 'Lead',
            'objectData': {
                'LastName': 'Sten',
                'FirstName': 'Ebenau',
                'Company' : 'Plauti B.V.',
                'Email': 'sten.ebeanu@plauti.com'
            },
            'relatedList': [
                {
                    'duplicateCheck': false,
                    'duplicateScore': 0,
                    'objectType': 'CampaignMember',
                    'referenceField': 'LeadId',
                    'objectData': {
                        'CampaignId': '7015I0000004rAwQAI'
                    }
                }
            ]
        }
    });
    console.dir(result, { depth: null });

}
process();

