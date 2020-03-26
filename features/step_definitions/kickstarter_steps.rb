When("I launch the app") do
  breakpoint
end

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

Then("I see the message {string}") do |string|
  breakpoint
end
