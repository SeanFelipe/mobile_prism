module ScreenModels
  class View
    def initialize(name, data1, data2='')
      @name = name
      @ref = nil

      if data1.start_with? 'a'
        if $android
          @ref = data1.gsub('a:','')
        else
          @ref = data2.gsub('i:','')
        end
      elsif data1.start_with? 'i'
        if $ios
          @ref = data1.gsub('i:','')
        else
          @ref = data2.gsub('a:','')
        end
      end

      @view_type = 'android.widget.TextView' if $android
    end

    def locator
      "//#{@view_type}[@text='#{@ref}']"
    end

    def finde
      $driver.find_element(:xpath, locator) if $android
      $driver.find_element(:name, @ref) if $ios
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
    def self.element(element_name, data1, data2='')
      # class method equivalent of instance method metaprogramming
      class_eval <<-CODE
        @@#{element_name} = View.new(element_name, data1, data2)
          def self.#{element_name}
          @@#{element_name}
        end
      CODE
    end
  end
end
