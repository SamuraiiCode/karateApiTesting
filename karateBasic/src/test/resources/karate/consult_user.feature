Feature: consult users successful

  Background:
    * url api.urlBase

  Scenario: consult all users
    Given path '/api/users?page=2'
    When method get
    Then status 200
    * print response