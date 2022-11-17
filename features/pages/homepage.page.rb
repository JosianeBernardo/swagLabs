class Homepage < SitePrism::Page
  set_url '/'

  class ProductList < SitePrism::Section
    element :add_to_cart_button, '#add-to-cart-sauce-labs-backpack'
    element :add_to_cart_button2, '#add-to-cart-sauce-labs-bike-light'
    element :select_product, '#item_4_img_link'
    elements :product_price, '.inventory_item_price'
  end

  section :product_list, ProductList, '.inventory_container'

    def add_product_to_cart
      product_list.add_to_cart_button.click
    end

    def add_second_product_to_cart
      product_list.add_to_cart_button2.click
    end

  # ------- somar os produtos --------------------------------------------
    def find_product_prices
      product_list.product_price.map { |price| price.text.delete('$') }
    end

    def sum_product_prices(price1, price2)
      price1.to_f + price2.to_f
    end

  # ------------- Selecionar um produto ----------------------------------

    def select_product
      product_list.select_product.click
    end
end
