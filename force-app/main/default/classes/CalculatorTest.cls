@isTest
public class CalculatorTest {
    //1. public or private
    //2. static is must
    //3. void mandatory
    //4. NO parameters. None.
    //5. @isTest annotation
    @isTest
    private static void testMethod1() {
        //we can call a parameterized method of other class.
        Calculator c = new Calculator();
        c.welcomeMessage();
        c.printNewMessage('print this from test class');
    }
}