# class of header elements
class Header < SitePrism::Page
    element :button_cart, '.shopping_cart_link'
    element :button_menu, '#react-burger-menu-btn'
    element :counter_cart_item, '.shopping_cart_badge'
  
    class Menu < SitePrism::Section
      element :logout_button, '#logout_sidebar_link'
    end
  
    section :menu, Menu, '.bm-menu'
  
    def access_cart
      button_cart.click
    end
  
    def do_logout
      button_menu.click
      menu.logout_button.click
    end

    def take_product_quantity
      counter_cart_item.text
    end
  end