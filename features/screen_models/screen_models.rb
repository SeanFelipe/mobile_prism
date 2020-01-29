module ScreenModels
  class View
    def initialize(ref, accessibility_id)
      @ref = ref
      @locator = accessibility_id
    end

    def click
      $driver.find_element(:accessibility_id, @locator).click
    end

    def text
      $driver.find_element(:accessibility_id, @locator).text
    end

    def wait_for
      puts "waiting for #{@locator}"
      10.times do |ii|
        begin
          $driver.find_element(:accessibility_id, @locator)
          break
        rescue
          puts "#{@locator} not found, #{ii} of 10..."
          sleep 1
        end
      end
    end
  end

  class Screen
    def self.element(element_name, locator)
      class_eval <<-CODE
        @@#{element_name} = View.new(element_name, locator)
          def self.#{element_name}
          @@#{element_name}
        end
      CODE
    end
  end
end
