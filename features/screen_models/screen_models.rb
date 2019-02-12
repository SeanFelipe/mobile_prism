module ScreenModels

  def self.element(ref, locator)
    Element.new(ref, locator)
  end

  class Element
    def initialize(ref, locator)
      @ref = ref
      @locator = locator
    end

    def click
      $driver.find_element(:class_name, @locator).click
    end

    def text
      $driver.find_element(:class_name, @locator).text
    end
  end

end

$mario = ScreenModels.element :mario, 'android.widget.ImageView'
$score = ScreenModels.element :score, 'android.widget.TextView'





