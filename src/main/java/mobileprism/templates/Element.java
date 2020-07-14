package mobileprism.templates;

import mobileprism.config.World;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Element {
    String ref;
    String id;

    public Element(String refName, String loc) {
        ref = refName;
        id = loc;
    }

    private By bby() { return By.id(id); }

    public boolean click() {
        World.driver.findElement(bby()).click();
        return true;
    }

    public boolean waitFor() {
        WebDriverWait wait = new WebDriverWait(World.driver, 15000);
        wait.until(ExpectedConditions.visibilityOfElementLocated(bby()));
        return true;
    }
}
