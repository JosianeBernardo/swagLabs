

Feature: Carrinho

  Background: Acesso a página home
    Given que o usuário esteja logado
    Given que o usuario tenha selecionado um produto

  Scenario: Finalizar compra com sucesso
    Given que entre no carrinho
    And faça o checkout com os dados solicitados
    When finalizar a compra
    Then deve conseguir visualizar a mensagem de sucesso
    And voltar para a home

  Scenario: Verificar valor total no carrinho
    And que tenha selecionado um segundo produto
    And que entre no carrinho
    When fizer o checkout com os dados solicitados
    Then o valor total do carrinho deve corresponder a soma dos produtos selecionados

  Scenario: Verificar valor total no carrinho com a taxa
    And que tenha selecionado um segundo produto
    And que entre no carrinho
    When fizer o checkout com os dados solicitados
    Then o valor total do carrinho deve corresponder a soma dos produtos selecionados mais a taxa
  
  Scenario: Remover produto do carrinho
    Given o usuário esta no carrinho de compras
    And tem apenas um produto listado
    When remover este produto
    Then o carrinho deve ficar vazio
    And o usuário deve retornar a homepage visualizando novamente a listagem de produtos disponíveis


    

    


        