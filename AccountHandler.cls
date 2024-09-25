public class AccountHandler {
  //  List<Account> a1 = new List<Account>();
    
    public static Account insertNewAccount(String acc){
        
        Account ac1 = new Account();
        ac1.name = acc;
        try{
            insert ac1;
        }
        catch(Exception e){
            return null;
        }
        {
            return ac1;
        }
      
    }
}