require 'appium_lib'
require 'rspec'
require 'rspec/expectations'
require 'byebug'; alias :breakpoint :byebug
require_relative '../screen_models/screen_models'
require_relative '../screen_models/mario_models'

unless ENV.has_key? 'APPIUM_APP' or ENV.has_key? 'APPIUM_APK'
  raise RuntimeError, 'please define $APPIUM_APK or $APPIUM_APP'
end

desired_caps_android = {
  caps:       {
    platformName:      'Android',
    automationName:    'UIAutomator2',
    deviceName:        'Nexus_5X_API_27',
    app:               ENV['APPIUM_APK'],
    newCommandTimeout: 1800,
    noReset:           true,
  }
}

desired_caps_ios = {
  caps: {
    platformName:    'iOS',
    platformVersion: '13.3',
    #platformVersion: '12.4',
    deviceName:      'iPhone 8',
    automationName:  'XCUITest',
    app:             ENV['APPIUM_APK'],
    newCommandTimeout: 1800,
    noReset:           true,
  }
}

$platform = 'ios'
$ios = true if $platform == 'ios'
$android = true if $platform == 'android'

selected_caps = $platform == 'android' ?
  desired_caps_android : desired_caps_ios

# shut up ALE warnings
desired_caps_android.object_id
desired_caps_ios.object_id

$driver = Appium::Driver.new(selected_caps, true)

puts 'starting driver...'

$driver.start_driver
