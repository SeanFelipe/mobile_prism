def rreload
  files = [
    './features/support/helper_methods.rb',
    './features/step_definitions/kickstarter_steps.rb',
  ]
  files.each {|ff| load ff}
end
alias :rr :rreload

def alle
  $driver.find_elements(:xpath, "//*")
end

def allv
  $driver.find_elements(:class_name, "android.widget.View")
end

def alltv
  $driver.find_elements(:class_name, "android.widget.TextView")
end

def allcn
  els = alle
  els.each {|el| print "#{el.className}\n"}
  puts
end

def fa(aid)
  $driver.find_elements(:accessibility_id, aid)
end
