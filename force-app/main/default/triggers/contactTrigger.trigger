trigger contactTrigger on Contact (before update, after update) {
    System.debug('--Trigger Started');
    if (trigger.isUpdate && trigger.isBefore){
        System.debug('before triggered');
    }
    if (trigger.isUpdate && trigger.isAfter){
        System.debug('after triggered');
    }
    System.debug('***Trigger Finished***');
}