class Select_product < SitePrism::Page
    elements :product_name, 'inventory_details_name'
    elements :product_discribe, '.inventory_details_desc.large_size'
    elements :product_price, '.inventory_details_price'
    elements :product_image, '.inventory_details_img'
    element :datails_add_to_cart, '#add-to-cart-sauce-labs-backpack'
    element :datails_remove_product_to_cart, '#remove-sauce-labs-backpack'
    element :back_home_button, '#back-to-products'

    def back_home
        back_home_button.click
    end

    def product_details_add_to_cart
        product_details_add_to_cart.click
    end

    def product_details_remove_product_to_cart
        product_details_remove_product_to_cart.click
    end

    def take_product_name
        product_name.first.text
    end
end