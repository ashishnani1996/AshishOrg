public class AshTraining {
    
    //Constructor
    
   // Default
    //parametrized
    //no parametrized
    
    public String Name; 
    Public Integer Numb;
    
    public AshTraining(){
        System.debug('no parametrized -- ');
    
    }
    
     public AshTraining( String Namenn, Integer Numb){
            System.debug('parametrized -- ');
          System.debug('Name -- '+Name);
          System.debug('numb -- '+Numb);
         Name = Namenn;
         this.Numb = Numb;
    
    }
    
    
    
    public static void childMethod(){
        System.debug('childMethod -- ');
    }
    
    
    public void nonStatMethod(){
        System.debug('nonStatMethod Child class');
       System.debug('Name -- '+Name);
          System.debug('numb -- '+Numb);
    }

}