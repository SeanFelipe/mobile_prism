After do |scenario|
  if scenario.failed?
    breakpoint
  end
end
