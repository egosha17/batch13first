public class ContactPhoneUpdate {
    public static void contactOtherphoneUpdate(List<Contact> conList) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conList) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            }
        }
        List<Account> accList = [SELECT id, Phone FROM Account WHERE id IN : accIds];
        if (!accList.isEmpty()) {
            Map<Id, Account> mapAcc = new Map<Id, Account>();
            for (Account acc : accList) {
                mapAcc.put(acc.Id, acc);            
            }
            for (Contact cn : conList) {
                cn.OtherPhone = mapAcc.get(cn.AccountId).Phone;
            }    
        }
       
    }
}