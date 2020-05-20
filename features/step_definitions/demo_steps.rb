When("I sign up with new user credentials") do
  AlphaScreen.sign_up_or_log_in.click
  SignupOrLogin.sign_up.click
  Signup.name.click
  timestamp = Time.now.to_i.to_s
  Signup.name.set "Demo User #{timestamp}"
  Signup.email.set "demo-#{timestamp}@addlightness.tech"
end

And("I click Sign Up") do
  breakpoint
end
