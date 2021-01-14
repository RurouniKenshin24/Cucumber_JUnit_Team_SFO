Feature: Web Data Page

  Background: Given user logged in as an admin
    Given admin is on Web Data page

  Scenario: User cliks on "Back to Home" button
    And user should be able to see "Back to Home" button is displayed
    When user clicks to "Back to Home" button
    Then user should be able to verify title changed to "Spartan Home"

  Scenario Outline: Admin should be able to see CRUD functions
    Then editor should verify that <function> name displayed on the table
      Examples:
      |function|
      |View|
      |Edit|
      |Delete|

  Scenario: Verification of total numbers of spartan
    Then user should verify that total row number equals to total number of spartans displayed
