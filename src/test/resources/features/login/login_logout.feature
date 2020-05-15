Feature: As a flipkart user I should be able to login and logout with valid credentials

 
 		@loginSmoke
    Scenario: Login into the application with empty username credentials
  	Given I am on the Login page URL "https://www.flipkart.com/"
    Then I should see Sign In Page
    When I enter username as ""
    And I enter password as "Innovate@123"
    And I click on login button
    Then I should see warning as enter valid cred "Please enter valid Email ID/Mobile number"
    
 
  @loginSmoke
  Scenario: Login into the application with valid credentials
  	Given I am on the Login page URL "https://www.flipkart.com/"
    Then I should see Sign In Page
    When I enter username as "9944402019"
    And I enter password as "Innovate@123"
    And I click on login button
    Then I should see user "Praveen"
    
   @login 
   Scenario: Login into the application with invalid username credentials
  	Given I am on the Login page URL "https://www.flipkart.com/"
    Then I should see Sign In Page
    When I enter username as "994"
    And I enter password as "Innovate@123"
    And I click on login button
    Then I should see warning as "Please enter valid Email ID/Mobile number"
    
    Scenario: Login into the application with wrong password credentials
  	Given I am on the Login page URL "https://www.flipkart.com/"
    Then I should see Sign In Page
    When I enter username as "9944402019"
    And I enter password as "sgddj"
    And I click on login button
    Then I should see warning as "Your username or password is incorrect"
    
    Scenario: Login into the application with empty password credentials
  	Given I am on the Login page URL "https://www.flipkart.com/"
    Then I should see Sign In Page
    When I enter username as "9944402019"
    And I enter password as ""
    And I click on login button
    Then I should see password warning as "Please enter Password"
    