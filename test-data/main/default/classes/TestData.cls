public without sharing class TestData {
    public TestData() {

    }

    public void resetOrg() {
        emptyOrg();
        createLeads();
        insertAccount();
    }

    public void emptyOrg() {

        delete [Select Id FROM Lead];
        delete [Select Id FROM Contact];
        delete [Select Id FROM Account];
        return;

    }

    public void createLeads() {
        List<Lead> leadList = new List<Lead>();
        leadList.add(new Lead(FirstName='Jenniffer', LastName = 'Blake', Company='Laoreet Corporation', Phone='1-817-297-7931', Email='nunc@vulputate.com', Street='Ap #673-4832 Non Avenue', City='Cumnock', PostalCode='10437', State='Ayrshire', Country='Italy'));
        leadList.add(new Lead(FirstName='Barack', LastName = 'Obama', Company='The White House', Phone='+1 202-456-1111', Email='obama@usa.com', Street='1600 Pennsylvania Ave NW', City='Washington', PostalCode='20500', State='DC', Country='United States'));
        leadList.add(new Lead(FirstName='Jennifer', LastName = 'Blake', Company='Laoreet Corporation', Phone='1-817-297-7931', Email='nunc@vulputate.com', Street='Ap #673-4832 Non Avenue', City='Cumnock', PostalCode='10437', State='Ayrshire', Country='Italy'));
        leadList.add(new Lead(FirstName='Jenniffer', LastName = 'Blaake', Company='Laoreeet Corporation', Phone='1-817-297-7932', Email='nunc@vulputatee.com', Street='Ap #673-4832 Non Avenue', City='Cumnoock', PostalCode='10437', State='Ayrshire', Country='Italy'));
        leadList.add(new Lead(FirstName='Giselle', LastName = 'Mullen', Company='Felis Eget Foundation', Phone='1-687-178-8286', Email='ornare.facilisis@vel.net', Street='P.O. Box 751, 3285 Libero Ave', City='Portland', PostalCode='H1V 6Y7', State='ME', Country='Botswana'));
        leadList.add(new Lead(FirstName='Giselle', LastName = 'Mullen', Company='Felis Eget Foundation', Phone='1-687-178-8286', Email='ornare.facilisis@vel.net', Street='P.O. Box 751, 3285 Libero Ave', City='Portland', PostalCode='H1V 6Y7', State='ME', Country='Botswana'));
        leadList.add(new Lead(FirstName='Giselle', LastName = 'Mullen', Company='Felis Eget Foundation', Phone='1-687-178-8286', Email='ornare.facilisis@vel.net', Street='P.O. Box 751, 3285 Libero Ave', City='Portland', PostalCode='H1V 6Y7', State='ME', Country='Botswana'));
        leadList.add(new Lead(FirstName='Giselle', LastName = 'Mullen', Company='Felis Eget Foundation', Phone='1-687-178-8286', Email='ornare.facilisis@vel.net', Street='P.O. Box 751, 3285 Libero Ave', City='Portland', PostalCode='H1V 6Y7', State='ME', Country='Botswana'));
        leadList.add(new Lead(FirstName='Paul', LastName = 'Craft', Company='Diam Incorporated', Phone='1-439-983-0697', Email='ut@consectetueripsumnunc.edu', Street='Ap #786-6630 Lectus St.', City='Annapolis', PostalCode='28046', State='Maryland', Country='Indonesia'));
        leadList.add(new Lead(FirstName='Paul', LastName = 'Craft', Company='Diam Incorporated', Phone='1-439-983-0697', Email='ut@consectetueripsumnunc.edu', Street='Ap #786-6630 Lectus St.', City='Annapolis', PostalCode='28046', State='Maryland', Country='Indonesia'));
        leadList.add(new Lead(FirstName='Paul', LastName = 'Craft', Company='Diam Incorporated', Phone='1-439-983-0697', Email='ut@consectetueripsumnunc.edu', Street='Ap #786-6630 Lectus St.', City='Annapolis', PostalCode='28046', State='Maryland', Country='Indonesia'));
        leadList.add(new Lead(FirstName='Raphael', LastName = 'Cleveland', Company='Rutrum Lorem Ac PC', Phone='235-4183', Email='ornare.facilisis@nec.co.uk', Street='P.O. Box 919, 6461 Risus. St.', City='Dublin', PostalCode='883411', State='L', Country='Vanuatu'));
        leadList.add(new Lead(FirstName='Raphael', LastName = 'Cleveland', Company='Rutrum Lorem Ac PC', Phone='235-4183', Email='ornare.facilisis@nec.co.uk', Street='P.O. Box 919, 6461 Risus. St.', City='Dublin', PostalCode='883411', State='L', Country='Vanuatu'));
        leadList.add(new Lead(FirstName='Irma', LastName = 'Jimenez', Company='Nec Tellus Nunc Associates', Phone='644-1200', Email='mauris.sapien@orci.edu', Street='523-9613 Ac Rd.', City='Roosbeek', PostalCode='71268', State='Waals-Brabant', Country='Japan'));
        leadList.add(new Lead(FirstName='Irma', LastName = 'Jimenez', Company='Nec Tellus Nunc Associates', Phone='644-1200', Email='mauris.sapien@orci.edu', Street='523-9613 Ac Rd.', City='Roosbeek', PostalCode='71268', State='Waals-Brabant', Country='Japan'));
        leadList.add(new Lead(FirstName='Irma', LastName = 'Jimenez', Company='Nec Tellus Nunc Associates', Phone='644-1200', Email='mauris.sapien@orci.edu', Street='523-9613 Ac Rd.', City='Roosbeek', PostalCode='71268', State='Waals-Brabant', Country='Japan'));
        leadList.add(new Lead(FirstName='Irma', LastName = 'Jimenez', Company='Nec Tellus Nunc Associates', Phone='644-1200', Email='mauris.sapien@orci.edu', Street='523-9613 Ac Rd.', City='Roosbeek', PostalCode='71268', State='Waals-Brabant', Country='Japan'));
        leadList.add(new Lead(FirstName='Irma', LastName = 'Jimenez', Company='Nec Tellus Nunc Associates', Phone='644-1200', Email='mauris.sapien@orci.edu', Street='523-9613 Ac Rd.', City='Roosbeek', PostalCode='71268', State='Waals-Brabant', Country='Japan'));
        leadList.add(new Lead(FirstName='Camille', LastName = 'Prince', Company='Proin Ultrices Institute', Phone='1-277-833-6135', Email='Quisque.ornare.tortor@quam.ca', Street='938-3816 Dignissim Avenue', City='Kirkby Lonsdale', PostalCode='64268', State='Westmorland', Country='Timor-Leste'));
        leadList.add(new Lead(FirstName='Dana', LastName = 'Schneider', Company='Dui Augue Associates', Phone='1-586-834-5463', Email='tortor@aliquetdiamSed.com', Street='253-7976 Arcu. Avenue', City='Vienna', PostalCode='48407-751', State='Vienna', Country='Brunei'));
        leadList.add(new Lead(FirstName='Dana', LastName = 'Schneijder', Company='Dui Associates', Phone='1-586-834-5463', Email='tortor@aliquetdiamSed.com', Street='253-7976 Arcu. Avenue', City='Vienna', PostalCode='48407-751', State='Vienna', Country='Brunei'));
        leadList.add(new Lead(FirstName='Amery', LastName = 'Rodriguez', Company='Duis Ltd', Phone='1-533-285-8332', Email='libero.at.auctor@Maurisquisturpis.net', Street='866-3179 Sociosqu Street', City='Gliwice', PostalCode='73-906', State='SlÄ…skie', Country='Barbados'));
        leadList.add(new Lead(FirstName='Amery', LastName = 'Rodriguez', Company='Duis Ltd', Phone='1-533-285-8332', Email='libero.at.auctor@Maurisquisturpis.net', Street='866-3179 Sociosqu Street', City='Gliwice', PostalCode='73-906', State='SlÄ…skie', Country='Barbados'));
        leadList.add(new Lead(FirstName='Cameron', LastName = 'Deleon', Company='Diam Industries', Phone='1-108-297-9365', Email='senectus.et.netus@Vivamussit.com', Street='7318 Dui. Av.', City='San JosÃ©', PostalCode='7596EE', State='SJ', Country='Uzbekistan'));
        leadList.add(new Lead(FirstName='Cammeron', LastName = 'Delleon', Company='Die Industries', Phone='1-108-297-9365', Email='senectus.et.netus@Vivamussit.com', Street='7318 Dui. Av.', City='San JosÃ©', PostalCode='7500EE', State='SJ', Country='Uzbekistan'));
        leadList.add(new Lead(FirstName='Erich', LastName = 'Hopkins', Company='Sem Elit Pharetra PC', Phone='1-715-944-7012', Email='Donec@erosnec.net', Street='Ap #209-2834 Non, Street', City='Rankweil', PostalCode='38537-052', State='Vbg', Country='Liechtenstein'));
        leadList.add(new Lead(FirstName='Sandra', LastName = 'Hopkins', Company='Sem Elit Pharetra PC', Phone='1-715-944-7012', Email='Donec@erosnec.net', Street='Ap #209-2834 Non, Street', City='Rankweil', PostalCode='38537-052', State='Vbg', Country='Liechtenstein'));
        leadList.add(new Lead(FirstName='Maryam', LastName = 'Hatfield', Company='Est PC', Phone='198-7212', Email='at.risus.Nunc@vitaesodales.org', Street='Ap #493-9239 Sed St.', City='ÅÃ³dÅº', PostalCode='56849', State='LD', Country='Heard Island and Mcdonald Islands'));
        leadList.add(new Lead(FirstName='Wanda', LastName = 'Gamble', Company='Gravida Praesent Incorporated', Phone='147-9969', Email='pellentesque@fringillaest.ca', Street='Ap #410-1177 Arcu. St.', City='Hamburg', PostalCode='910978', State='Hamburg', Country='Bahrain'));
        leadList.add(new Lead(FirstName='Lacy', LastName = 'Morse', Company='Suspendisse Tristique Associates', Phone='1-736-690-6178', Email='dolor@nisiAeneaneget.co.uk', Street='6013 Velit. Ave', City='Salon-de-Provence', PostalCode='8698', State='Provence-Alpes-Cote d\'Azur', Country='Egypt'));
        leadList.add(new Lead(FirstName='Caryn', LastName = 'Rhodes', Company='Convallis In Cursus Ltd', Phone='1-521-804-2290', Email='pede.nec@magnis.org', Street='P.O. Box 279, 5043 Nibh Street', City='Berlin', PostalCode='30207', State='Berlin', Country='Cocos (Keeling) Islands'));
        leadList.add(new Lead(FirstName='Rhiannon', LastName = 'Wilkins', Company='Felis Nulla Corporation', Phone='314-8342', Email='purus.ac@Donectempus.com', Street='P.O. Box 171, 9240 Auctor Av.', City='Westmount', PostalCode='5050', State='Quebec', Country='New Caledonia'));
        leadList.add(new Lead(FirstName='Carissa', LastName = 'Campbell', Company='Nec Mollis Industries', Phone='1-953-589-6187', Email='amet.risus.Donec@dolorvitaedolor.ca', Street='Ap #730-351 Dui Rd.', City='Betim', PostalCode='47517', State='Minas Gerais', Country='France'));
        leadList.add(new Lead(FirstName='Ivan', LastName = 'Mueller', Company='Ridiculus Company', Phone='1-170-300-0393', Email='sociis.natoque.penatibus@non.net', Street='2906 Fringilla Road', City='Katsina', PostalCode='25328', State='KT', Country='Mongolia'));
        leadList.add(new Lead(FirstName='Quemby', LastName = 'Reeves', Company='Orci Ut Foundation', Phone='545-9240', Email='eu@enim.edu', Street='Ap #239-2159 In Rd.', City='PÅ‚ock', PostalCode='3789', State='Mazowieckie', Country='Mozambique'));
        leadList.add(new Lead(FirstName='Barbara', LastName = 'Donovan', Company='Sagittis Institute', Phone='1-260-897-8353', Email='lacinia.orci@Integer.edu', Street='Ap #332-4501 Non Rd.', City='Anchorage', PostalCode='3311', State='Alaska', Country='Congo (Brazzaville)'));
        leadList.add(new Lead(FirstName='Chancellor', LastName = 'Huff', Company='Amet Faucibus Ut Ltd', Phone='145-8917', Email='tellus@ullamcorperDuiscursus.com', Street='9988 Magna Ave', City='Warrnambool', PostalCode='23570', State='Victoria', Country='Saint Lucia'));
        leadList.add(new Lead(FirstName='Winter', LastName = 'Key', Company='Fusce Mollis Corporation', Phone='745-4216', Email='ac@Lorem.co.uk', Street='277 Mauris St.', City='Salihli', PostalCode='3678TX', State='Man', Country='Costa Rica'));
        leadList.add(new Lead(FirstName='Paula', LastName = 'Barnes', Company='Sagittis Corp.', Phone='1-203-942-3285', Email='ullamcorper.eu@Maecenas.org', Street='Ap #562-7255 Tincidunt Ave', City='Richmond', PostalCode='8362PC', State='BC', Country='Ghana'));
        leadList.add(new Lead(FirstName='Amir', LastName = 'Browning', Company='Eget Metus Limited', Phone='1-812-234-7288', Email='lacus.vestibulum@vestibulum.net', Street='273-1279 Iaculis Avenue', City='Vienna', PostalCode='10616', State='Wie', Country='Western Sahara'));
        leadList.add(new Lead(FirstName='澤東', LastName = '王', Company='国家电网公司', Phone='0538-8415279', Email='info@sgcc.com', Street='273-1279 Iaculis Avenue', City='Beijing', PostalCode='10616', State='Wie', Country='China'));
        leadList.add(new Lead(FirstName='澤東', LastName = '王', Company='国家电网公司', Phone='0538-8415279', Email='info@sgcc.com', Street='273-1279 Iaculis Avenue', City='Beijing', PostalCode='10616', State='Wie', Country='China'));
        leadList.add(new Lead(FirstName='Sara', LastName = 'Velper', Company='Laoreet Corporation', Phone='+31651688493', Email='empty@mailinator.com', Street='Velperweg 8', City='ARNHEM', PostalCode='6824 BH', State='Gelderland', Country='NL', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Floor', LastName = 'Zutphen', Company='Wijnhuis Toren', Phone='+3126220', Email='empty@gmail.z', Street='45', City='', PostalCode='7205AV', State=null, Country='the Netherlands', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Iris', LastName = 'Zutphen', Company='Wijnhuis Toren', Phone='+3126220', Email='empty@gmail.x', Street='7205AV 45', City='', PostalCode=null, State=null, Country='NLD', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Sara', LastName = 'Rubbish', Company='Rubbish', Phone='+883478', Email='sara.rubbish@gmail.com', Street='ab', City='', PostalCode='', State=null, Country='NLD', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Agnes', LastName = 'Berlin', Company='Google DE', Phone='0049-30-30-3986300', Email='berlin@google.com',Street='Unter den Linden 14', City='Berlin', PostalCode='10117', State=null, Country='DE', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Katrin', LastName = 'Berlin', Company='Google DE', Phone='030-30-3986300', Email='katrin.berlin@de.cm', Street='Unter den Linden 14', City='Berlin', PostalCode='', State=null, Country='DE', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Emmanuelle', LastName = 'Paris', Company='Google FR', Phone=null, Email='e.paris@google.fr', Street='8 Rue de Londres-15-15 Bis Rue de Clichy', City='Paris', PostalCode='75009', State=null, Country='FR', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Aleksandra', LastName = 'Poland', Company='Google PL', Phone='+48 (71) 73 41 000', Email='a.poland@yahoo.com', Street='Gen. Jozefa Bema nr 2', City='Wroclaw', PostalCode='50-265', State=null, Country='PL', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Fernanda', LastName = 'Brazil', Company='Google BR', Phone='+55-31-2128-6800', Email='a@b.com', Street='Av. dos Andradas, 3000 - Andares 14-17 Santa Efigênia', City='Belo Horizonte', PostalCode='30260-070', State=null, Country='Brazil', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Constanza', LastName = 'Chile', Company='Google CL', Phone='+55-31-2128-6800', Email='constanza@123234345.com', Street='Costanera Sur Rio 2730, Las Condes', City='Santiago', PostalCode=null, State=null, Country='Chile', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Maxi', LastName = 'Atlanta', Company='Google US', Phone='404-487-9000', Email='maxi.atlanta@google.us', Street='10 10th St Ne Ste 100', City='Atlanta', PostalCode='30309-3835', State='GA', Country='USA', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Emily', LastName = 'New York', Company='Google US', Phone='0012125650000', Email='emily.ny@qwe.pod', Street='111 8th Avenue', City='New York', PostalCode='10011', State='NY', Country='United States', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Shira', LastName = 'Israel', Company='Google IL', Phone='+972-74-746-6453', Email='shira.israel@google.il', Street='Yigal Alon 98', City='Tel Aviv', PostalCode=null, State='', Country='IL', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Yang', LastName = 'China', Company='Google CN', Phone='+86-10-62503000', Email='yang@naibu.com', Street='6th Floor, Tower B, Raycom InfoTech Park No. 2 Kexueyuan South Road', City='Beijing', PostalCode='100190', State='', Country='China', LeadSource='demo'));
        leadList.add(new Lead(FirstName='Yang', LastName = 'Taiwan', Company='Google TW', Phone='+886 2 8729 6000', Email='yang.taiwin.si@nu.now.ro', Street='No. 7 XinYi Road Section 5', City='Taipei', PostalCode=null, State='', Country='TW', LeadSource='demo'));
        insert leadList;
    }

    public pageReference insertAccount() {

        List<Account> AccountList = new List<Account>();
        AccountList.add(new Account(Name='Laoreet Corporation', Phone='1-817-297-7931', BillingStreet='Ap #673-4832 Non Avenue', BillingCity='Cumnock', BillingPostalCode='10437', BillingState='Ayrshire', BillingCountry='Italy'));
        AccountList.add(new Account(Name='Felis Eget Foundation', Phone='1-687-178-8286', BillingStreet='P.O. Box 751, 3285 Libero Ave', BillingCity='Portland', BillingPostalCode='H1V 6Y7', BillingState='ME', BillingCountry='Botswana'));
        AccountList.add(new Account(Name='Diam Incorporated', Phone='1-439-983-0697', BillingStreet='Ap #786-6630 Lectus St.', BillingCity='Annapolis', BillingPostalCode='28046', BillingState='Maryland', BillingCountry='Indonesia'));
        AccountList.add(new Account(Name='陳小敏'));
        AccountList.add(new Account(Name='Rutrum Lorem Ac PC', Phone='235-4183', BillingStreet='P.O. Box 919, 6461 Risus. St.', BillingCity='Dublin', BillingPostalCode='883411', BillingState='L', BillingCountry='Vanuatu'));
        AccountList.add(new Account(Name='Nec Tellus Nunc Associates', Phone='644-1200', BillingStreet='523-9613 Ac Rd.', BillingCity='Roosbeek', BillingPostalCode='71268', BillingState='Waals-Brabant', BillingCountry='Japan'));
        AccountList.add(new Account(Name='Proin Ultrices Institute', Phone='1-277-833-6135', BillingStreet='938-3816 Dignissim Avenue', BillingCity='Kirkby Lonsdale', BillingPostalCode='64268', BillingState='Westmorland', BillingCountry='Timor-Leste'));
        AccountList.add(new Account(Name='Mac Donalds Germany'));
        AccountList.add(new Account(Name='Mac Donalds France'));
        AccountList.add(new Account(Name='Mac Donalds Spain'));
        AccountList.add(new Account(Name='陳小敏'));


        insert AccountList;

        List<Contact> contactList = new List<Contact>();
        contactList.add(new contact(FirstName='Jennifer', LastName='Blake', AccountId=AccountList[0].Id, Phone='1-817-297-7931', Email='info@plauti.com', MailingStreet='Nieuwe Overstraat 31-9', MailingCity='Arnhem', MailingState='Gelderland', MailingCountry='Nederland'));
        contactList.add(new contact(FirstName='Giselle', LastName='Mullen', AccountId=AccountList[1].Id, Phone='1-687-178-8286', Email='info@newyorklibrary.com', MailingStreet='5th Ave', MailingCity='New York', MailingPostalCode='476', MailingState='NY', MailingCountry='United States of America'));
        contactList.add(new contact(FirstName='Paul', LastName='Craft', AccountId=AccountList[2].Id, Phone='1-439-983-0697', Email='ut@consectetueripsumnunc.edu', MailingStreet='Ap #786-6630 Lectus St.', MailingCity='Annapolis', MailingPostalCode='28046', MailingState='Maryland', MailingCountry='Indonesia'));
        contactList.add(new contact(FirstName='Raphael', LastName='Cleveland', AccountId=AccountList[3].Id, Phone='235-4183', Email='ornare.facilisis@nec.co.uk', MailingStreet='P.O. Box 919, 6461 Risus. St.', MailingCity='Dublin', MailingPostalCode='883411', MailingState='L', MailingCountry='Vanuatu'));
        contactList.add(new contact(FirstName='Irma', LastName='Jimenez', AccountId=AccountList[4].Id, Phone='644-1200', Email='mauris.sapien@orci.edu', MailingStreet='523-9613 Ac Rd.', MailingCity='Roosbeek', MailingPostalCode='71268', MailingState='Waals-Brabant', MailingCountry='Japan'));
        contactList.add(new contact(FirstName='Olav', LastName='Luijten', Email='oluijten@wwf.nl', BirthDate= Date.newInstance(2016,8,9)));
        contactList.add(new contact(LastName='Luijten', Email='olavluijten@gmail.com', BirthDate= Date.newInstance(2016,8,9),  Salutation='Mr.'));
        contactList.add(new contact(FirstName='O', LastName='Luijten', Email='oluijten@wwf.nl', Salutation='Mr.'));
        contactList.add(new contact(FirstName='Camille', LastName='Prince', AccountId=AccountList[5].Id, Phone='1-277-833-6135', Email='Quisque.ornare.tortor@quam.ca', MailingStreet='938-3816 Dignissim Avenue', MailingCity='Kirkby Lonsdale', MailingPostalCode='64268', MailingState='Westmorland', MailingCountry='Timor-Leste'));
        insert contactList;

        return null;
    }
}
