public class Datetime_Assignments {
    public void diffofDate(){
        Date varTomorrowsDate = Date.today()+1;
        System.debug('Tomorrows Date is '+varTomorrowsDate);

        Date today = Date.newInstance(2023, 01, 14);
        System.debug('Todays Date is '+today);

        Date yearAgo = Date.newInstance(2022, 01, 14);
        Integer differenceBet2Dates = yearAgo.daysBetween(today);
        System.debug('difference between dates '+differenceBet2Dates);
    }
    public void TimeCheck(){
        Datetime tomorrow = Datetime.newInstance(2023, 01, 15, 07, 00, 00);
        System.debug('Tomorrowa datetime is '+tomorrow);

        Datetime var10daysDatetime = Datetime.newInstance(2023, 01, 24, 09, 00, 00);
        System.debug('Datetime 10 days from now is '+ var10daysDatetime);

        Long DatetimeLong = 12339874361L;
        Datetime longDatetime = Datetime.newInstance(DatetimeLOng);
        System.debug('Datetime created with Long is '+longDatetime);

        Date date1 = tomorrow.date().addDays(7);
        Date date2 = var10daysDatetime.date().addDays(10);
        System.debug('Added 7 days to tomorrow ' +date1  +'\n 10days added to 10daysDatetime '+date2);
    }
}