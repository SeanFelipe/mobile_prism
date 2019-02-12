Given("the score begins at {string}") do |string|
  $driver.find_element(:class_name, 'android.widget.TextView').text.should eq "0"
end

When("I click Mario") do
  $driver.find_element(:class_name, 'android.widget.ImageView').click
end

Then("the score increases to {string} within {string} seconds") do |score, seconds|
  sleep seconds.to_i + 0.5
  $driver.find_element(:class_name, 'android.widget.TextView').text.should eq string
end

When("I click Mario again") do
  $driver.find_element(:class_name, 'android.widget.ImageView').click
end

