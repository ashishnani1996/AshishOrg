@isTest
private class AccountManagerTest {
    
    static testmethod void testmethod1(){
        Account objAccount = new Account(Name= 'Test Acc11');
        insert objAccount;
        
        Contact objContact = new Contact(LastName = 'Test Contact',
                                        AccountId = objAccount.Id );
        insert objContact;
        
        Id recordId = objAccount.Id;
        RestRequest request = new RestRequest();
        request.requestURI =  'https://nani96-dev-ed.lightning.force.com/services/apexrest/Accounts/'+recordId+'/contacts';
           
        request.httpMethod = 'GET';
        RestContext.request = request;
        
        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Test Acc11', thisAccount.Name);
    }

}