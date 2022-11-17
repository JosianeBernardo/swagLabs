# Class of cart elements
class Cart < SitePrism::Page
    element :checkout, '#checkout'
    element :remove_iten_button, '#remove-sauce-labs-backpack'
    element :continue_shopping_button, '#continue-shopping'
    elements :product_title, '.inventory_item_name'
      
    def access_checkout
      checkout.click
    end

    def remove_iten
      remove_iten_button.click
    end

    def continue_shopping
      continue_shopping_button.click
    end
  end