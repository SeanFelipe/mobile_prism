def all
  $driver.find_elements(:xpath, "//*")
end

def aid
  $driver.find_elements(:accessibility_id, aid)
end

