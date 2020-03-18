When("I boot up and grab all elements") do
=begin
  elems = alle
=end

  sleep 1
  elems = $driver.find_elements(:class_name, "android.widget.TextView")
  elems.each {|el| print "#{el.class}: #{el.text}\n"}
  breakpoint

end
