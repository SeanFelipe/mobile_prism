module ScreenModels
  def self.element(ref, locator)
    Element.new(ref, locator)
  end

  class Element
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
end

$mario = ScreenModels.element :mario, 'mario_small'
$score = ScreenModels.element :score, 'score'





