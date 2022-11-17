# Class of login elements
class Login < SitePrism::Page
    element :input_username, '#user-name'
    element :input_password, '#password'
    element :login_button, '#login-button'
  
    def do_login(name, pass)
      input_username.set name
      input_password.set pass
      login_button.click
    end
  end