Then("I debug for a while") do
  breakpoint # agb ignore
end

Given("the Start Screen appears") do
  breakpoint
end

Given("I click on the mushroom") do
  StartScreen.mushroom.click
  sleep 2
end
