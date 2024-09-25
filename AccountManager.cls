@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
    
    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        System.debug('accountId');
        Account objAccount = [Select Id, Name, (Select Id, Name from Contacts) From Account Where Id =: accountId Limit 1];
        return objAccount;
    }

}