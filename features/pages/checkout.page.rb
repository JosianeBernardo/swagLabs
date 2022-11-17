
# Class of checkout elements
class Checkout < SitePrism::Page
    element :input_first_name, '#first-name'
    element :input_last_name, '#last-name'
    element :input_postalcode, '#postal-code'
    element :button_continue, '#continue'
  
    def do_checkout(first_name, last_name, postalcode)
      input_first_name.set first_name
      input_last_name.set last_name
      input_postalcode.set postalcode
      button_continue.click
    end
  end
