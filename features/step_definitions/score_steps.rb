Given("the score begins at {string}") do |string|
  $score.text.should eq "0"
end

When("I click Mario") do
  $mario.click
end

Then("the score increases to {string} within {string} seconds") do |expected_score, seconds|
  sleep seconds.to_i + 0.5
  $score.text.should eq expected_score
end

When("I click Mario again") do
  $mario.click
end

