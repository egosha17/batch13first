public class SoqlDemo {
    public static void accountSOQL_1() {
         list<account> listAccount = [select id, name from account];
         system.debug('list of accounts ' + listAccount);
    }
    public static void accountSOQL_11(){
     account acc = [select id, name, Phone from account order by createddate desc limit 1];
     system.debug('account record ' + acc);
    }
    public static void accountSOQL_2(){
         account acc = [select id, name, Phone, AccountNumber, Website from account order by createddate desc limit 1];
         system.debug('latest created account record ' + acc);
         //print phone, name, and accountnumber
         string aName = acc.Name;
         string aPhone = acc.Phone;
         system.debug('account name ' + aName + ' account phone ' + aPhone + ', account number is ' + acc.AccountNumber);
         system.debug('account website ' + acc.Website);//will this work?
    }
 
    public static void accountSOQL_3() {
     list<account> listAccount = [select id, phone, name, accountnumber from account order by createddate DESC];
     //for each loop on the list.
         for (account eachAcc  : listAccount) {
             system.debug('---each acc start---');
             system.debug('each acc: ' + eachAcc);
             string accName = eachAcc.Name;
             string accPhone = eachAcc.Phone;
             system.debug('accName ' + accName + ' phone ' + accPhone + ' accountnumber is ' + eachAcc.AccountNumber);
             system.debug('---each acc end---');
         }
    }
    public static void account_soqlFilter() {
        string accountName = 'GenePoint';
        list<account> listacc = [select name, phone from account where name = :accountName];
        system.debug('filter1: ' + listacc);
       }

       public static void childtoParent_SOQL1() {
        list<contact> listContacts = [SELECT id, name, account.name,account.industry FROM contact WHERE account.industry='energy'];
        for (contact eachContact : listContacts) {
            string accName = eachContact.account.name;
            System.debug('Contact name is '+eachContact.Name + ' each account name is '+accName+ ' and industry is '+eachContact.Account.Industry);            
        }
       }
       public static void parenttoChild_SOQL2() {
        List<Account> listAccount = [SELECT id, name, (SELECT lastname, phone FROM Contacts WHERE phone != '') FROM Account];
        for (Account eachAcc : listAccount) {
            System.debug('Account name is '+eachAcc.name);
            for (Contact  con: eachAcc.Contacts) {
                System.debug('lastname is '+con.lastname+' and phone number is '+con.Phone);
            }
        }        
       }
       public static void parenttoChild_SOQL3() {
        List<Account> listAccount = [SELECT name, Type, AnnualRevenue, 
        (SELECT name, amount FROM Opportunities)
        FROM Account WHERE Type='customer - direct'];
        for (Account eachAcc : listAccount) {
            System.debug('account name is '+eachAcc.Name+' its annual revenue is '+eachAcc.AnnualRevenue);
            System.debug('------------');
            List<Opportunity> eachAccOpt = eachAcc.Opportunities;
            for (Opportunity eachOpp : eachAccOpt) {
                System.debug('opp name is '+eachOpp.Name+' and amount is '+eachOpp.Amount);               
            }
            System.debug('----------------');            
        }
                
       }
 }