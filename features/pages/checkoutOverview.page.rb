class CheckoutOverview < SitePrism::Page
    element :button_finish, '#finish'
    element :total_price, '.summary_subtotal_label'
    element :price_taxa, '.summary_tax_label'
    element :total_price_with_taxa, '.summary_total_label'
  
    def finish_buy
      button_finish.click
    end
  
    def return_total_price
      total_price.text.delete('Item total: $').to_f
    end
  
    def return_price_taxa
      price_taxa.text.delete('Tax: $').to_f
    end
    
    def return_total_price_with_taxa
      total_price_with_taxa.text.delete('Total: $').to_f
    end
  end