package mobileprism.config;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

public class World {
    public static String platform() {
        return "android";
    }

    // Make this a public field rather than using a getter.
    // We might get NPE's, buthis should be initialized immediately, and if it's not initted properly, it will be obvious.
    // We end up with much cleaner code -- World.driver vs World.getDriver() everywhere.
    public static AndroidDriver<MobileElement> driver;

    public static void setDriver(AndroidDriver d) {
        driver = d;
    }
}
