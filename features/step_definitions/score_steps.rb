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

When("I click Mario again") do
  GameScreen.mario.click
end

