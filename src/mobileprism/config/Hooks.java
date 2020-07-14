package mobileprism.config;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.net.MalformedURLException;
import java.net.URL;

public class Hooks {
    @Before
    public void initializeTest() throws MalformedURLException {
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability("platformName", "Android");
        capabilities.setCapability("deviceName", System.getProperty("deviceName"));
        capabilities.setCapability("platformVersion", System.getProperty("platformVersion"));
        capabilities.setCapability("appPackage", System.getProperty("appPackage"));
        //capabilities.setCapability("appActivity", "");
        World.setDriver(new AndroidDriver<MobileElement>(new URL("http://0.0.0.0:4723/wd/hub"), capabilities));
    }

    @After
    public void tearDownTest(Scenario scenario) {
        if (scenario.isFailed()) try {
            byte[] screenshot =
                ((TakesScreenshot) World.driver).getScreenshotAs(OutputType.BYTES);
            scenario.embed(screenshot, "image/png");
        } catch (ClassCastException cce) {
            cce.printStackTrace();
        }
        World.driver.quit();
    }
}

