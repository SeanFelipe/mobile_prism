
For demonstration purposes, I'm using the Kickstarter [mobile](https://github.com/kickstarter/ios-oss) [app](https://github.com/kickstarter/android-oss), which Kickstarter has been gracious enough to open source. :) Yay ! Thank you Kickstarter !


#### Clean, elegant page (screen) modeling DSL, inspired by Site Prism


Site Prism's `element` method, adapted to support iOS and Android in a one-line declaration

Here's a simple implementation with Super Mario:

<p align="center">
  <img src="https://github.com/SeanFelipe/mobile_prism/raw/master/img/appiumario.gif">
</p>


Here's code from a Kickstarter implementation:

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

Using Cucumber, test code looks like this:

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

When("I enter email {string} plus the unique timestamp") do |string|
  em = string.split('@')
  un = em.first + "-#{@timestamp}@"
  unique_email = un + em.last
  Signup.email.click
  Signup.email.set unique_email
end

When("I enter password {string}") do |string|
  Signup.password.click
  Signup.password.set string
end

When("I click go") do
  Numpad.go.click
end
```
