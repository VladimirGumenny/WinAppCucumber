class UserHomePage < BasePage

  class << self

    def user_menu_drop_down
      $driver.find_element(:xpath, '//Document//MenuItem')
    end

    def sign_out_menu_item
      $driver.find_element(:name, 'Sign Out')
    end

    def company_containers
      $driver.find_elements(:name, 'COMPANY')
    end

    def logout
      user_menu_drop_down.click
      sign_out_menu_item.click
    end

    def user_name
      user_menu_drop_down.text
    end

    def wait_until_loaded
      $wait.until { !company_containers.empty? }
    end

  end

end