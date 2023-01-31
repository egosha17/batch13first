public class CollectionsClass {
    public static String listAssignment(Integer n){
        list<string> LstMonth = new list<string>();
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        String output_month = '';
        If(n>0 && n<=LstMonth.size()){
            output_month = LstMonth[n-1];
        }else{
            output_month = 'Not a valid month';
        }                
        return output_month;
    }
}