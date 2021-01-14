Feature: Login Functionality

  Background: User is on the spartan home page
    Given user is on the spartan home page

  Scenario: Login as an admin
    When user clicks on the Web Data
    And user logged in as an admin
    Then user should be able to see title is "All Spartan"
    And user should be able to see "Logged in Username: admin" message