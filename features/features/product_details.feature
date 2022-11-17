
Feature: Detalhes do produto

Background: Acesso a página home
    Given que o usuário esteja na área logada
@dev
Scenario: inserir um produto no carrinho
    Given esteja na página de detalhes do produto
    When selecionar adicionar produto no carrinho
    Then o produto deve ser inserido no carrinho

Scenario: Remover um produto no carrinho
    When selecionar remover o produto no carrinho
    Then o produto deve ser removido do carrinho
    And o usuário deve retornar a homepage

# Scenario: Acessar os detalhes do produto
#     When o usuário clicar em determinado produto
#     Then deve ser redirecionado para página de detalhes do produto
#     And deve visualizar o nome do produto, descrição, valor e uma imagem
#     And retornar para homepage
   
