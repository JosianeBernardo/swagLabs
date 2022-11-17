Given('que o usuario esteja na página de login') do
  visit '/'
end

When('fizer login com as credenciais válidas') do
  name = 'standard_user'
  pass = 'secret_sauce'

  login_page.do_login(name, pass)
end

Then('deve conseguir acessar a home logada') do
  expect(page).to have_css('.title', text: 'PRODUCTS')
end

When('fizer login com as credenciais inválidas') do
  name = 'standard'
  pass = 'secret_sauce'
  login_page.do_login(name, pass)
end

Then('deve visualizar uma mensagem de erro') do
  expect(page).to have_css('.error-message-container',
                           text: 'Epic sadface: Username and password do not match any user in this service')
end

When('selecionar para fazer logout') do
  header.do_logout
end

Then('deve voltar à pagina de login') do
  expect(page).to have_css('.login_logo',
                            text: 'SWAGLABS')
end

  


  
  
  