import org.testng.annotations.Test;

import mobileprism.screens.StartScreen;


public class Kickstarter {
    @Test()
    public void helloWorld() {
        System.out.println("Hello World");
        System.out.println("StartScreen: " + StartScreen.mario().toString());
    }
}
