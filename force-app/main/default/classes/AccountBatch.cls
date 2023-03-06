public class AccountBatch implements Database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('inside start method');
        Database.QueryLocator acc = Database.getQueryLocator([select id, name,description from Account]);
        return acc;
    }
    public void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('inside execute method');
        for (Account acc : scope) {
            acc.Description += '...updated via batch';
        }
        update scope;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('finished all records');
    }
}