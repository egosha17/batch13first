@isTest
public class AccountQueuableTest {
    testmethod static void testQueuable1() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 100; i++) {
            Account a=new Account();
            a.Name = 'queueable test '+i;
            a.Description = 'TEST. ';
            listAcc.add(a);  
        }
        insert listAcc;

        Test.startTest();
        List<Account> listAcc2 = [select id, name, description from Account];
        system.enqueueJob(new AccountQueueable(listAcc2));
        Test.stopTest();

        integer count=[select COUNT() from Account where name like '%--SI'];
        system.assertEquals(100, count);
    }
}