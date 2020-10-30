require 'appium_lib'
require 'selenium-webdriver'

class BasePage

  class << self

    def logged_in?
      $driver.find_elements(:xpath, '//Document//MenuItem').size > 0
    end

  end

end