public class RankHandler {
    String prize = '';
    public String rankPrize(integer rank){
        if (rank==1) {
            prize='Gold';
        }else if (rank==2) {
            prize='Silver';
        }else if (rank==3) {
            prize='Bronze';
        }else {
            if (rank<=10) {
                prize='Top 10 Certificate';
            }else {
                prize='Participation Certificate';
            }
        }
        return prize;
    }
    public String rankPrizeWwitch(Integer rank){
        switch on rank {
            when 1 {
                prize = 'Gold';
            }
            when 2 {
                prize = 'Silver';
            }
            when 3 {
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Top 10 Certificate';
            }
            when else {
               if (rank<=0) {
                prize = 'You are sucked';                
               } else {
                prize = 'Participate Certificate';
               }
            }
        }
        return prize;        
    }
    public void printNumbers(integer n){
        for (Integer i=1; i<=n; i++){
            System.debug(i);
        }
    }
}