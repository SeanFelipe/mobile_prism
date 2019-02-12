#### Appium demo with (sort of) Super Mario

<p align="center">
  <img src="https://github.com/SeanFelipe/Appiumario/raw/master/gif/appiumario.gif">
</p>


A little Appium stack in Ruby made to run against this demo app: [SuperMarioDroid](https://github.com/SeanFelipe/SuperMarioDroid)

Doing a bit of magic screen models underneath the hood which you can look at [here](https://github.com/SeanFelipe/Appiumario/blob/master/features/screen_models/screen_models.rb). Using the magic looks like this:
```
When("I click Mario") do
  $mario.click
end
```

As opposed to repeating ```driver.find_element(:class_name, 'android.widget.ImageView')``` ad nauseum.

Inspired by SitePrism, a long standing DSL for page models for web:
[Site Prism](https://github.com/natritmeyer/site_prism)
