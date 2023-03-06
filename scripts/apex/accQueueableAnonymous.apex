List<Account> accL = [select id,name from account limit 50];
AccountQueueable aq = new AccountQueueable(accL);
id qId = system.enqueueJob(aq);