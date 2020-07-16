import mobileprism.screens.StartScreen;
import org.testng.annotations.Test;

import mobileprism.components.PrismTest;


public class Kickstarter extends PrismTest {
    @Test()
    public void helloWorld() {
        System.out.println("Hello World");
        System.out.println("Mushroom: " + StartScreen.mushroom());
    }
}
