class SuccessBuy < SitePrism::Page
    element :back_home, 'button[data-test="back-to-products"]'
    element :success_message, '.complete-header', text: 'THANK YOU FOR YOUR ORDER'
  
    def go_back_home
      back_home.click
    end
  end