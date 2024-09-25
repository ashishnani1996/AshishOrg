@isTest
public class AccountProcessorTest {
    
    static testmethod void accountproce(){
        Test.setMock(HttpCalloutMock.class, new SMSCalloutMock());
        List<Account> acc = new List<Account>();
        Account a1 = new Account();
        a1.Name = 'Test 1';
        Account a2 = new Account();
        a2.Name = 'Test 2';
        Account a3 = new Account();
        a3.Name = 'Test 3';
        acc.add(a1);
        acc.add(a2);
        acc.add(a3);
        insert acc;
        //List<Account> acc1 = [Select Id from Account];
        List<Id> accId = new List<Id>();
        for(Account a : acc){
            accId.add(a.Id);
        }
        
        Test.startTest();
          AccountProcessor.countContacts(accId);
        Test.stopTest();
        
    }

}