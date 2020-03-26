class LocatorNotFoundForPlatform < RuntimeError; end


module ScreenModels
  class View

    attr_reader :multiple

    def initialize(name, data1, data2='')
      @name = name
      @ref = nil
      @multiple = false
      @index = 0

      if $android
        if data1.start_with? 'a'
          build_ref(data1.gsub('a:',''))
        elsif data2.start_with? 'a'
          build_ref(data2.gsub('a:',''))
        else
          raise LocatorNotFoundForPlatform, "no locator found for #{@name}, platform #{$platform}"
        end
      elsif $ios
        if data1.start_with? 'i'
          build_ref(data1.gsub('i:',''))
        elsif data2.start_with? 'i'
          build_ref(data2.gsub('i:',''))
        else
          raise LocatorNotFoundForPlatform, "no locator found for #{@name}, platform #{$platform}"
        end
      end

      @view_type = 'android.widget.TextView' if $android
    end

    def build_ref(data)
      unless data.end_with? ']'
        @ref = data
      else
        @multiple = true
        d2 = data.split('[')
        @ref = d2.first
        @index = d2.last.gsub(']','').to_i
      end
    end

    def locator
      "//#{@view_type}[@text='#{@ref}']"
    end

    def finde
      unless @multiple
        $driver.find_element(:xpath, locator) if $android
        $driver.find_element(:name, @ref) if $ios
      else
        if $android
          raise NotImplementedError
        else
          $driver.find_elements(:name, @ref)[@index]
        end
      end
    end

    def click
      wait_for
      finde.click
    end

    def text
      finde.text
    end

    def set(text)
      finde.send_keys(text)
    end

    def wait_for(secs=10)
      #puts "waiting for #{@ref}"
      secs.times do |ii|
        begin
          finde
          break
        rescue Selenium::WebDriver::Error::NoSuchElementError
          puts "#{@ref} not found, #{ii + 1} of #{secs}..."
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
