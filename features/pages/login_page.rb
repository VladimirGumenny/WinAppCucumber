class LoginPage < BasePage

  class << self

    def login_buttons
      # $driver.find_elements(:name, 'LOGIN')
      $driver.find_elements(:accessibility_id, 'login-button')
    end

    def phone_number_element
      $driver.find_element(:name, 'Enter your phone number')
    end

    def extension_element
      $driver.find_element(:name, 'Enter your extension number')
    end

    def password_element
      $driver.find_element(:name, 'Enter your password')
    end

    def login_click
      login_buttons.first.click
    end

    def login(phone_number, extension, password)
      $wait.until { !login_buttons.empty? }
      phone_number_element.clear
      phone_number_element.send_keys phone_number
      extension_element.clear
      extension_element.send_keys extension
      password_element.clear
      password_element.send_keys password
      login_click
      UserHomePage
    end

    def clear_login_inputs
      phone_number_element.clear
      extension_element.clear
      password_element.clear
    end

  end
end