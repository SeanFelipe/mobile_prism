package mobileprism.components;

import mobileprism.config.World;

public abstract class PrismScreen {
    public static Element generateElement(String ref, String iosLocator, String androidLocator) {
        Element out = null;
        switch ( World.platform() ) {
        case "ios":
          out = new Element(ref, iosLocator);
          break;
        case "android":
         out = new Element(ref, androidLocator);
          break;
        }
        return out;
    }
}
