public class Car {

    //class variables. ->accessible outside class
    public String carColor = '';
    public String carName = '';
    //private variables -> only accessible inside of the class
    private integer maxSpeed = 140;

    public void swithcOn(){
        system.debug('starting the car');
    }
    public void drive(){
        system.debug('driving '+carName);
    }
    public void driveWithMaxSpeed(){
        system.debug('driving '+carName+' with a color '+carColor+ ' at '+maxSpeed+ ' km/h' );
        
    }
}
