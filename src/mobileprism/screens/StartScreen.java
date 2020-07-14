package mobileprism.config.screens;

import mobileprism.config.templates.Element;
import mobileprism.config.templates.PrismScreen;


class StartScreen extends PrismScreen {
    public static Element welcomeMessage() {
        String androidId = "welcome";
        String iosLocator = "";
        return generateElement("welcome_message", iosLocator, androidId);
    }

    public static Element mushroom() {
        String androidId = "mushroom_main";
        String iosLocator = "";
        return generateElement("mushroom", iosLocator, androidId);
    }

    public static Element mario() {
        String androidId = "mario_small";
        String iosLocator = "";
        return generateElement("mario", iosLocator, androidId);
    }

    public static Element score() {
        String androidId = "score";
        String iosLocator = "";
        return generateElement("score", iosLocator, androidId);
    }
}
