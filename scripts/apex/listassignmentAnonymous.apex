String m1=CollectionsClass.listAssignment(1);
System.debug(m1);
String m2=CollectionsClass.listAssignment(13);
System.debug(m2);
String m3=CollectionsClass.listAssignment(-2);
System.debug(m3);
String m4=CollectionsClass.listAssignment(10);
System.debug(m4);
String m5=CollectionsClass.listAssignment(12);
System.debug(m5);

list<String> listStr = new list<String>();
listStr.add('sounds good');
listStr.add('good');
listStr.add('OK');
listStr.add('clear');

String concateStr = '';
for(String eachStr:listStr){
    concateStr += ' || '+ eachStr; 
}
System.debug(concateStr);
