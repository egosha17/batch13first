public class StringDemoClass {
    public void stringMethod(){
        String sessionDescrition = 'learing string methods in apex language';
        System.debug(sessionDescrition);

        //length
        Integer lengthofStr = sessionDescrition.length();
        System.debug('length of string '+lengthofStr);

        //convert the string to Cap
        String capitalStr = sessionDescrition.toUpperCase();
        System.debug('session desctiption in capital '+ capitalStr);

        //check if our string has 'apex' in  it 
        Boolean containsApex = sessionDescrition.contains('apex');
        system.debug('contains apex :'+containsApex);
    }
}