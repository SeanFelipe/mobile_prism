module ScreenModels
  def self.element(ref, locator)
    View.new(ref, locator)
  end

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
