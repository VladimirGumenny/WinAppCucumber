require 'selenium-webdriver'
require 'em/pure_ruby'
require 'appium_lib'

class DriverHelper

  # def initialize
  #   set_driver
  # end
  #
  # def set_driver
  #   opts =
  #     {
  #       caps:
  #         {
  #           platformName: 'WINDOWS',
  #           platform: 'WINDOWS',
  #           deviceName: 'WindowsPC',
  #           app: 'C:\Users\vladimir.gumennyy\AppData\Local\Programs\office-desktop\Ooma Office.exe'
  #         },
  #       appium_lib:
  #         {
  #           wait_timeout: 30,
  #           wait_interval: 0.5
  #         }
  #     }
  #
  #   # run winappdriver.exe 127.0.0.1 4723/wd/hub
  #   driver = Appium::Driver.new(opts, true).start_driver
  #   driver.manage.timeouts.implicit_wait = 60
  #
  #   # wait = Selenium::WebDriver::Wait.new :timeout => 60
  #
  #   driver
  # end

end