require 'selenium-webdriver'
require 'em/pure_ruby'
require 'appium_lib'

# Windows
# opts =
#   {
#     caps:
#       {
#         platformName: 'WINDOWS',
#         platform: 'WINDOWS',
#         deviceName: 'WindowsPC',
#         app: 'C:\Users\vladimir.gumennyy\AppData\Local\Programs\office-desktop\Ooma Office.exe'
#       },
#     appium_lib:
#       {
#         wait_timeout: 30,
#         wait_interval: 0.5
#       }
#   }

# MacOS
opts =
  {
    caps:
          {
            platformName: 'Mac',
            app: 'Ooma Office',
            deviceName: 'Mac',
            platformVersion: '10.15.7'
          },
    appium_lib:
          {
            wait_timeout: 30,
            wait_interval: 0.5,
            sauce_username: nil,
            server_url: 'http://127.0.0.1:4723/wd/hub'
          }
  }

# run winappdriver.exe 127.0.0.1 4723/wd/hub
$driver = Appium::Driver.new(opts, true).start_driver
$driver.manage.timeouts.implicit_wait = 30

$wait = Selenium::WebDriver::Wait.new timeout: 30
