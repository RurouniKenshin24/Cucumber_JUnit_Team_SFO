Feature: Delete Spartan verification

  Background: Given user logged in as an admin
    Given admin is on Web Data page

  Scenario: Deleting spartan verification
    When user clicks on "Delete" button
    Then user should be able to verify that the spartan is not displayed on the table
    And user should verify that total row number equals to total number of spartans displayed