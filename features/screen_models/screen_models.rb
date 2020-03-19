module ScreenModels
  class View
    def initialize(name, data)
      @name = name
      @text = data.gsub('a|','')
      @view_type = 'android.widget.TextView'
    end

    def locator
      "//#{@view_type}[@text='#{@text}']"
    end

    def finde
      $driver.find_element(:xpath, locator)
    end

    def click
      finde.click
    end

    def text
      finde.text
    end

    def wait_for
      puts "waiting for #{@view_type} #{@text}"
      10.times do |ii|
        begin
          finde
          break
        rescue
          puts "#{@view_type} #{@text} not found, #{ii} of 10..."
          sleep 1
        end
      end
    end
  end

  class Screen
    def self.element(element_name, locator)
      # class method equivalent of instance method metaprogramming
      class_eval <<-CODE
        @@#{element_name} = View.new(element_name, locator)
          def self.#{element_name}
          @@#{element_name}
        end
      CODE
    end
  end
end
