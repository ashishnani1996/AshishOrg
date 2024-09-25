public class AccountProcessor {
    @future
    public Static void countContacts(List<Id> accIds){
        List<Account> account = new List<Account>();
        for(Id acid : accIds){
            List<Account> acc = [Select Id, Number_of_Contacts__c,(Select Id from Contacts) from Account where Id =: acid];
            for(Account a : acc){
                Integer size = a.Contacts.size();
                a.Number_of_Contacts__c = size;
                account.add(a);
            }
        }
        update account;
        
    }
    
}