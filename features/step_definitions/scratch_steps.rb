When("I boot up and grab all elements") do
  Kernel.puts 'begin step'
=begin
  elems = alle

  sleep 1
  elems = alle
  #elems = $driver.find_elements(:class_name, "android.widget.TextView")
  #elems = $driver.find_elements(:class_name, "android.widget.TextView")
  texts = elems.select {|el| el.label != nil}
  texts.each {|el| print "#{el.label}: #{el.text}\n" }

=end


  elems = alle
  puts elems
  Kernel.puts 'elems complete'

  breakpoint
  puts
end

