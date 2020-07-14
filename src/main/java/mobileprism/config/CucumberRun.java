package mobileprism.config;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(features = "features", format={"json:target/cucumber.json"})
public class CucumberRun {
}

