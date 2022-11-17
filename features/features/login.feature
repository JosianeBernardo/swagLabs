
Feature: Login

  Background: Acesso a página inicial
    Given que o usuario esteja na página de login

  Scenario: Login com sucesso
    When fizer login com as credenciais válidas
    Then deve conseguir acessar a home logada

  Scenario: Tentativa de login com credenciais inválidas
    When fizer login com as credenciais inválidas
    Then deve visualizar uma mensagem de erro
    # And não deve visualizar a home

  Scenario: Fazer logout
    When fizer login com as credenciais válidas
    And selecionar para fazer logout
    Then deve voltar à pagina de login                                    |
        
    
        
   