public class listDemo {
    public static String candidateList(Integer i) {
        List<String> listCandidate = new List<String>();
        listCandidate.add('Mike');
        listCandidate.add('Cerkez');
        listCandidate.add('Anna');
        listCandidate.add('Meret');
        System.debug(listCandidate);
        string candidate = '';
        if (i>=0 && i<listCandidate.size()) {
            candidate = listCandidate[i];            
        } else {
            candidate = 'No such candidate found';
        }
        return candidate; 
    }
    public static void randomIntegerList() {
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(15);
        listInteger.add(20);
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(10);
        System.debug(listInteger);

        Integer index3value = listInteger.get(3);
        Integer index3value2 = listInteger[3];//exactly same as above

        System.debug('value of index 3 '+index3value);
        System.debug('value of index 3 again '+index3value2);
    }
    public static void allCats(){
        List<cat> cats =new List<Cat>();
        Cat c1 = Cat('marys', 'grey');
        Cat c2 = Cat('tek','blue');
        Cat sfcat = Cat();
        
        cats.add(c1);
        cats.add(c2);
        cats.add(sfcat);
        System.debug(cats);
    }
    public static integer add(List<Integer> intList) {
        integer returnInt = 0;
        for (integer eachInt : intList) {
            returnInt +=eachInt;
        }
        return returnInt;
    }
}