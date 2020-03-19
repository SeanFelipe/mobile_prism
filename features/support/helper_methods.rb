def rreload
  files = [
    './features/support/helper_methods.rb',
    './features/step_definitions/kickstarter_steps.rb',
    './features/screen_models/kickstarter_models.rb',
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
  $allcn = els
 llt els.each {|el| print "#{el.className}\n"}
end

def fa(aid)
  $driver.find_elements(:accessibility_id, aid)
end
