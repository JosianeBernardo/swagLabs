
# BACKGROUNDS -------------------------------------------------

Given('que o usuário esteja logado') do
  homepage_page.load

  name = 'standard_user'
  pass = 'secret_sauce'

  login_page.do_login(name, pass)
end

Given('que o usuario tenha selecionado um produto') do
  homepage_page.add_product_to_cart
end

# --------------------------------------------------------------

Given('que entre no carrinho') do
  header.access_cart
end

Given('faça o checkout com os dados solicitados') do
  first_name = 'Isabelli'
  last_name = 'Batista'
  postalcode = '1234567'

  cart_page.access_checkout
  checkout_page.do_checkout(first_name, last_name, postalcode)
end

When('finalizar a compra') do
  checkout_overview_page.finish_buy
end

Then('deve conseguir visualizar a mensagem de sucesso') do
  expect(success_buy_page).to have_success_message
end

Then('voltar para a home') do
  success_buy_page.go_back_home
  expect(page).to have_current_path '/inventory.html'
end

# ------------------------------------------------------------------

Given('que tenha selecionado um segundo produto') do
  @price_list = homepage_page.find_product_prices
  homepage_page.add_second_product_to_cart
end

When('fizer o checkout com os dados solicitados') do
  steps %(
    And faça o checkout com os dados solicitados
  )
end

Then('o valor total do carrinho deve corresponder a soma dos produtos selecionados') do
  price_sum = homepage_page.sum_product_prices(@price_list[0], @price_list[1])
  total_price = checkout_overview_page.return_total_price

  expect(price_sum).to eql total_price.to_f
end

# -------------------------------------------------------------------

Then('o valor total do carrinho deve corresponder a soma dos produtos selecionados mais a taxa') do
  price_taxa = checkout_overview_page.return_price_taxa # valor da taxa
  total_price = checkout_overview_page.return_total_price # valor total dos itens sem taxa
  total_price_with_taxa = checkout_overview_page.return_total_price_with_taxa # valor dos produtos + taxa
  total = homepage_page.sum_product_prices(price_taxa, total_price) # soma do valor da taxa mais o valor total de itens

  expect(total_price_with_taxa).to eql total
end

# ------------- Remover produto do carrinho ---------------------

Given('o usuário esta no carrinho de compras') do
  steps %(
    Given que entre no carrinho
  )
end

Given('tem apenas um produto listado') do
  page.assert_text('Sauce Labs Backpack')
  expect(page.assert_text('Sauce Labs Backpack')).to eq true
end

When('remover este produto') do
  cart_page.remove_iten
end

Then('o carrinho deve ficar vazio') do
  expect(cart_page).not_to have_product_title
end

Then('o usuário deve retornar a homepage visualizando novamente a listagem de produtos disponíveis') do
  cart_page.continue_shopping
end