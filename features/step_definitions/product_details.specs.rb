
Given('que o usuário esteja na área logada') do
    homepage_page.load

    name = 'standard_user'
    pass = 'secret_sauce'

    login_page.do_login(name, pass)
end

Given('esteja na página de detalhes do produto') do
    homepage_page.select_product
    binding.pry
    @product_title = product_details_page.take_product_name
end
  
When('selecionar adicionar produto no carrinho') do
    product_details_page.product_details_add_to_cart
    @product_quantity = header.take_product_quantity
end
  
Then('o produto deve ser inserido no carrinho') do
    header.access_cart
    expect(cart_page).to have_text(@product_title)
    expect(@product_quantity).to eql "1"
end
  
When('selecionar remover o produto no carrinho') do
    product_details_page.product_details_remove_product_to_cart
end
  
Then('o produto deve ser removido do carrinho') do
    
end
  
Then('o usuário deve retornar a homepage') do
    product_details_page.back_home
end

#Given('esteja na homepage') do
    #     page.assert_text('PRODUCTS')
    #     expect(page.assert_text('PRODUCTS')).to eq true
    # end
      
    # When('o usuário clicar em determinado produto') do
    #     homepage_page.select_product
    # end
      
    # Then('deve ser redirecionado para página de detalhes do produto') do
    #     page.assert_text('Sauce Labs Backpack')
    #     expect(page.assert_text('Sauce Labs Backpack')).to eq true
    # end
      
    # Then('deve visualizar o nome do produto, descrição, valor e uma imagem') do
    #     expect(product_details_page).to have_product_name
    #     expect(product_details_page).to have_product_discribe
    #     expect(product_details_page).to have_product_price
    #     expect(product_details_page).to have_product_image
    # end
    
    # Then ('retornar para homepage') do
    #     product_details_page.back_home_button
    #     expect(page).to have_text('PRODUCTS')
    # end