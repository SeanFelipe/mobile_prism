#### Clean, elegant page (screen) modeling DSL, inspired by Site Prism


Site Prism's `element` method, adapted to support iOS and Android in a one-line declaration

Here's an earlier implementation with Super Mario:

```ruby
class GameScreen < ScreenModels::Screen
  element :mario, 'mario_small'
  element :score, 'score'
end
```

Step definitions:

```ruby
Given("the score begins at {string}") do |string|
  GameScreen.score.text.should eq "0"
end

When("I click Mario") do
  GameScreen.mario.click
end

Then("the score increases to {string} within {string} seconds") do |expected_score, seconds|
  sleep seconds.to_i + 0.5
  GameScreen.score.text.should eq expected_score
end
```

<p align="center">
  <img src="https://github.com/SeanFelipe/mobile_prism/raw/master/img/appiumario.gif">
</p>


More recently, I'm using the Kickstarter [mobile](https://github.com/kickstarter/ios-oss) [app](https://github.com/kickstarter/android-oss), which Kickstarter has been gracious enough to open source. :) Yay ! Thank you Kickstarter !

<div align="center">
  <div style="display: flex; flex-direction: column">
    <img src="https://github.com/SeanFelipe/mobile_prism/raw/master/img/kickstarter.png">
    <img src="https://github.com/SeanFelipe/mobile_prism/raw/master/img/kickstarter_android.png">
  </div>
</div>

```ruby
class AlphaScreen < ScreenModels::Screen
  element :magic, 'a:MAGIC', 'i:Magic'
  element :popular, 'a:POPULAR', 'i:Popular'
  element :newest, 'a:NEWEST', 'i:Newest'
  element :ending_soon, 'a:NEWEST', 'i:Ending Soon'
  element :sign_up_or_log_in, 'i:Sign up or Log in'
end

class NavBar < ScreenModels::Screen
  element :explore, 'i:Explore'
  element :activity, 'i:Activity'
  element :search, 'i:Search'
  element :profile, 'i:Profile'
end
```

Test executions:

```ruby
When("I select Sign up or Log in") do
  AlphaScreen.sign_up_or_log_in.click
end

And("I select Sign up on the Sign up or Log in screen") do
  SignupOrLogin.sign_up.click
end

When("I enter name {string} with a unique timestamp") do |string|
  @timestamp = Time.now.to_i
  Signup.name.click
  Signup.name.set "#{string}-#{@timestamp}"
end
```
