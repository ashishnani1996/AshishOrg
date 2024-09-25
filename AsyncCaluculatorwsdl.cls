//Generated by wsdl2apex

public class AsyncCaluculatorwsdl {
    public class DivideResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            Caluculatorwsdl.DivideResponse_element response = (Caluculatorwsdl.DivideResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.DivideResult;
        }
    }
    public class AddResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            Caluculatorwsdl.AddResponse_element response = (Caluculatorwsdl.AddResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.AddResult;
        }
    }
    public class MultiplyResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            Caluculatorwsdl.MultiplyResponse_element response = (Caluculatorwsdl.MultiplyResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.MultiplyResult;
        }
    }
    public class SubtractResponse_elementFuture extends System.WebServiceCalloutFuture {
        public Integer getValue() {
            Caluculatorwsdl.SubtractResponse_element response = (Caluculatorwsdl.SubtractResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.SubtractResult;
        }
    }
    public class AsyncCalculatorSoap {
        public String endpoint_x = 'http://www.dneonline.com/calculator.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://tempuri.org/', 'Caluculatorwsdl'};
        public AsyncCaluculatorwsdl.DivideResponse_elementFuture beginDivide(System.Continuation continuation,Integer intA,Integer intB) {
            Caluculatorwsdl.Divide_element request_x = new Caluculatorwsdl.Divide_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncCaluculatorwsdl.DivideResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncCaluculatorwsdl.DivideResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Divide',
              'http://tempuri.org/',
              'Divide',
              'http://tempuri.org/',
              'DivideResponse',
              'Caluculatorwsdl.DivideResponse_element'}
            );
        }
        public AsyncCaluculatorwsdl.AddResponse_elementFuture beginAdd(System.Continuation continuation,Integer intA,Integer intB) {
            Caluculatorwsdl.Add_element request_x = new Caluculatorwsdl.Add_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncCaluculatorwsdl.AddResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncCaluculatorwsdl.AddResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Add',
              'http://tempuri.org/',
              'Add',
              'http://tempuri.org/',
              'AddResponse',
              'Caluculatorwsdl.AddResponse_element'}
            );
        }
        public AsyncCaluculatorwsdl.MultiplyResponse_elementFuture beginMultiply(System.Continuation continuation,Integer intA,Integer intB) {
            Caluculatorwsdl.Multiply_element request_x = new Caluculatorwsdl.Multiply_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncCaluculatorwsdl.MultiplyResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncCaluculatorwsdl.MultiplyResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Multiply',
              'http://tempuri.org/',
              'Multiply',
              'http://tempuri.org/',
              'MultiplyResponse',
              'Caluculatorwsdl.MultiplyResponse_element'}
            );
        }
        public AsyncCaluculatorwsdl.SubtractResponse_elementFuture beginSubtract(System.Continuation continuation,Integer intA,Integer intB) {
            Caluculatorwsdl.Subtract_element request_x = new Caluculatorwsdl.Subtract_element();
            request_x.intA = intA;
            request_x.intB = intB;
            return (AsyncCaluculatorwsdl.SubtractResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncCaluculatorwsdl.SubtractResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://tempuri.org/Subtract',
              'http://tempuri.org/',
              'Subtract',
              'http://tempuri.org/',
              'SubtractResponse',
              'Caluculatorwsdl.SubtractResponse_element'}
            );
        }
    }
}