require 'appium_lib'
require 'rspec'
require 'rspec/expectations'
require 'byebug'; alias :breakpoint :byebug
require_relative '../screen_models/screen_models'
require_relative '../screen_models/mario_models'

desired_caps = {
  caps:       {
    #appiumVersion:    '1.4.16',
    platformName:     'Android',
    #platformVersion:  '4.4',
    newCommandTimeout: 600,
    automationName:       'UIAutomator2',
    deviceName:       'Nexus_5X_API_27',
    app:              ENV['APPIUM_APK'],
  }
}

$driver = Appium::Driver.new(desired_caps)
$driver.start_driver
