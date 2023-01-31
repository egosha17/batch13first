Calculator c= Calculator();
String msg = c.printAndReturnMessage('this text for batch13');
System.debug('returned message is :' +msg);

Integer addNumbers = c.add(10, 20);
System.debug('Sum of Numbers : '+addNumbers);

Integer sum11=c.add(10, 20, 30);
System.debug('sum11 is '+sum11);

date today = date.today();
Boolean lpy = c.leapYearCheck(today);
System.debug('Todays date leap year? '+lpy);