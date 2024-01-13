Feature: UserFullName
  @Regression
  Scenario: User-FullName-can be changed using Alphanumerical $ Special characters
    Given I navigate to "login" page
    And I type email "0mohandlove33o@cojqh5.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    When I click on "Quizzes" on left menu
