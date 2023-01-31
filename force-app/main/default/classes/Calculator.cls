public class Calculator {
    public String printAndReturnMessage(String m){
        privateMessageTest(m);
        String returnStr = '';
        returnStr = m + ' ...OK Cool';
        return returnStr;
    }
    void privateMessageTest(String msg){
        System.debug('We are in Private NOW');
        System.debug(msg);
        System.debug('Private MEthod Completed');

    }

    public Integer add(integer a, integer b){
        sum = a+b;
        return sum;
    }
    public Integer add(integer x ,integer z, Integer y){
        sum=x+z+y;
        return sum;
    }

    public Boolean leapYearCheck(Date dt){
        Integer year = dt.year();
        Boolean lp = date.isLeapYear(year);
        return lp;
    }
}