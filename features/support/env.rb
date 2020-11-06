require 'selenium-webdriver'
require 'em/pure_ruby'
require 'appium_lib'

OOMA_OFFICE_PATH = "#{ENV['HOMEDRIVE']}#{ENV['HOMEPATH']}\\AppData\\Local\\Programs\\office-desktop\\Ooma Office.exe"
DRIVER_FILE_NAME = 'WinAppDriver.exe'
DRIVER_PATH = "C:\\Program Files (x86)\\Windows Application Driver\\"

def driver_running?
  `tasklist /FI "IMAGENAME eq WinAppDriver.exe" /NH`.include?(DRIVER_FILE_NAME)
end

# Windows
opts =
  {
    caps:
        {
          platformName: 'WINDOWS',
          platform: 'WINDOWS',
          deviceName: 'WindowsPC',
            # app: 'C:\Users\vladimir.gumennyy\AppData\Local\Programs\office-desktop\Ooma Office.exe'
          app: OOMA_OFFICE_PATH
        },
    appium_lib:
          {
            wait_timeout: 30,
            wait_interval: 0.5
          }
  }

# MacOS
# opts =
#   {
#     caps:
#           {
#             platformName: 'Mac',
#             app: 'Ooma Office',
#             deviceName: 'Mac',
#             platformVersion: '10.15.7'
#           },
#     appium_lib:
#           {
#             wait_timeout: 30,
#             wait_interval: 0.5,
#             sauce_username: nil,
#             server_url: 'http://127.0.0.1:4723/wd/hub'
#           }
#   }

unless driver_running?
  path = DRIVER_PATH + DRIVER_FILE_NAME
  cmd = "start /min \"AWinAppDriver\" \"#{path}\" \"127.0.0.1\" \"4723/wd/hub\""
# run winappdriver.exe 127.0.0.1 4723/wd/hub
  system(cmd)
end

$driver = Appium::Driver.new(opts, true).start_driver
$driver.manage.timeouts.implicit_wait = 30

$wait = Selenium::WebDriver::Wait.new timeout: 30
# $driver.page_source
