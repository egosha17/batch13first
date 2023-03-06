public class AccountQueueable implements Queueable{
    public list<Account> ListAccs; 
    public AccountQueueable(List<Account> accs) {
        ListAccs = accs;
    }
    public void execute(QueueableContext qc){
        for (Account ac : ListAccs) {
            ac.Name += '--SI';
        }
        update ListAccs;
    }
}