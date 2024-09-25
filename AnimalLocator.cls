public class AnimalLocator {
    
    public static  string getAnimalNameById(Integer Id){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+Id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String strResp = '';
        if(response.getStatusCode() == 200){
            
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animals = (Map<String, Object>) results.get('animal');
            strResp = string.valueOf(animals.get('name'));
        }
        return strResp;
       
    }

}