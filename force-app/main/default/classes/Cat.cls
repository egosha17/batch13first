public class Cat {
    public String name;
    public String color;
    public Cat() {
        System.debug('Constructor is called');
    }
    public Cat(String n, String clr){
        name = n;
        color= clr;
        sleeping();
    }
    public void sleeping(){
        system.debug(name +' is sleeping');
    }
}