@isTest
public class AddPrimaryContactTest {
    Static testmethod void addprmry(){
        List<Account> accnt = new List<Account>();
        /*for(Integer i=0; i<=50; i++){
            Account a = new Account();
            a.Name = 'Test NY '+ i;
            a.BillingState = 'NY';
            accnt.add(a);
        } */
        for(Integer i=0; i<=50; i++){
            Account b = new Account();
            b.Name = 'Test CA '+ i;
            b.BillingState = 'CA';
            accnt.add(b);
        }
        Insert accnt;
        List<Contact> conlst = new List<Contact>();
        for(Account ac : accnt){
            Contact c =new Contact();
            c.LastName = 'Test contact ';
            c.AccountId = ac.Id;
            conlst.add(c);
        }
        Insert conlst;
        Test.startTest();
        AddPrimaryContact obj = new AddPrimaryContact(conlst.get(0),'CA');
        System.enqueueJob(obj);
        Test.stopTest();
    }
   

}