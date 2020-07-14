package mobileprism.config;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

public class World {
    public static AndroidDriver<MobileElement> driver;

    public static String platform() {
        return "android";
    }

    public static void setDriver(AndroidDriver d) {
        driver = d;
    }
}
