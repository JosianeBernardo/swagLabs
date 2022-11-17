# help modules
module PageObject
    def login_page
      Login.new
    end
  
    def cart_page
      Cart.new
    end
  
    def homepage_page
      Homepage.new
    end
  
    def header
      Header.new
    end
  
    def checkout_page
      Checkout.new
    end
  
    def checkout_overview_page
      CheckoutOverview.new
    end
  
    def success_buy_page
      SuccessBuy.new
    end

    def product_details_page
      Select_product.new
    end
  end