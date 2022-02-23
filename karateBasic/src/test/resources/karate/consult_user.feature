Feature: consult users successful

  Background:
    * url api.urlBase


  @getListMethod
  Scenario: get all users and find Lindsay
    Given path '/api/users?page=2'
    When method get
    Then status 200
    * print response
    * def name = "Lindsay"
    * print name
    And match $.data[1].first_name contains name

  @postMethod
  Scenario: create a new user
    * json datos = {"name": "Samurai","job": "QA"}
    Given path '/api/users'
    And request datos
    When method post
    Then status 201
    * print response
    * json jsonValidation = {"name": "Samurai","job": "QA","id": "#string","createdAt": "#string"}
    And match response == jsonValidation

  @getSingleMethodOutline
  Scenario Outline: get users with parameter
    Given path '/api/users/' + <number>
    When method get
    Then status 200
    * print response 

    Examples:
      | number |
      | 1      |
      | 2      |
      | 3      |