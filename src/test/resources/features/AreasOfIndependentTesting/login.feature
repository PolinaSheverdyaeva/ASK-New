Feature: Login
  @Sanity
    #invalid password
  Scenario: Login - Valid Email/Password
    Given I navigate to login page
    And I type email "xjnrdnpathake@b4top.tk"
    And I type password "12345"
    And I click on Sign In button
    Then I verify user name "Leslie Teacher" is displayed
  @Sanity
  Scenario: Login - Invalid password
    Given I navigate to login page
    And I type email "xjnrdnpathake@b4top.tk"
    And I type password "123456"
    And I click on Sign In button
    Then I verify error message "Authentication failed. User not found or password does not match" appears

  Scenario: Login - email field required
    Given I navigate to login page
    And I type email on "login" page
    And I type password "12345" on "login" page
    And I click on Sign In button
    Then I verify error message "This field is required" appears
  Scenario: Login - email case insensitive
    Given I navigate to login page
    And I type email "xJnrdnpathake@b4top.tk"
    And I type password "12345"
    And I click on Sign In button
    Then  I verify user name "Leslie Teacher" is displayed

  Scenario: Log In - student - valid email and valid password combination lets user in
    Given I navigate to login page
    When I type email "student0@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Message "Jon Snow" appears