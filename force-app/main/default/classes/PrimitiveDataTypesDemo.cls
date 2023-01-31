public class PrimitiveDataTypesDemo {
    public void printBasicDataTypes() {
        String batchName = 'Batch 13';
        Integer totalCondidates = 40;
        Boolean isAdminCompleted = true;

        String batchDescription = batchName + ' is the best';
        System.debug(batchDescription);
        System.debug(totalCondidates+ ' number of attendees');
    }
    public void testObject() {
        Object testid = 000345683234;
        Object isTrue= true;
        Object isDecimal = 123.46;
        System.debug('My ID is '+ testid);
        System.debug('Boolen test is ' +isTrue);
        System.debug('Decimal Object is ' + isDecimal);
    }
}
