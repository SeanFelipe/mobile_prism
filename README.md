#### Appium demo with (sort of) Super Mario

<p align="center">
  <img src="https://github.com/SeanFelipe/Appiumario/raw/master/gif/appiumario.gif">
</p>


A little Appium stack in Ruby made to run against this demo app: [SuperMarioDroid](https://github.com/SeanFelipe/SuperMarioDroid)

Doing a bit of magic screen models underneath the hood which you can look at [here](https://github.com/SeanFelipe/Appiumario/blob/master/features/screen_models/screen_models.rb). Each screen has elements, which you can interact with like so:
```
When("I click Mario") do
  GameScreen.mario.click
end
```

As opposed to repeating ```driver.find_element(:accessibility_id, 'interesting_element')```. More elegant, more beautiful in the Ruby tradition.

Not to take too much credit, the original idea comes from the SitePrism gem: [Site Prism](https://github.com/natritmeyer/site_prism) .
