String s1 = listDemo.candidateList(3);
System.debug(s1);
listDemo.randomIntegerList();
listDemo.allCats();

List<Integer> listInteger = new List<Integer>();
listInteger.add(15);
listInteger.add(20);
listInteger.add(15);
listInteger.add(15);
listInteger.add(10);

Integer sumofList = listDemo.add(listInteger);
System.debug('Sum of list is ' +sumofList);
