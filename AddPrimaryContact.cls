global class AddPrimaryContact implements Queueable{
    private Contact con;
    private string state;
    public AddPrimaryContact(Contact con, string state){
        this.con = con;
        this.state = state;
        
    }
    
    global void execute(QueueableContext context){
        List<Account> acc = [Select Id,Name, BillingState from Account where BillingState Like :'%'+state+'%'  limit 200];
        List<Contact> cont = new List<Contact>();
        for(Account a : acc){
           con.AccountId = a.Id;
           cont.add(con);
        }
        update cont;
        
    }

}