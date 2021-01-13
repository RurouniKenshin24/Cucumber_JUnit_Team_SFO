Feature: Login
  Background: User is on Spartan home page

  Scenario: Login as User
    Given user is on Spartan Home Page
    When user clicks on Web Data
    And user enters login "user"
    And user enters password "user"
    Then user should see title All Spartan
    And user should see Logged in Username: user on a page
