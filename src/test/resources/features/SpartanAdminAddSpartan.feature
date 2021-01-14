Feature: Add Spartan

  Background: Given user logged in as an admin
    Given admin is on Web Data page
    When user clicks on "Add Spartan" button

  Scenario: Title and text verification
    Then user should be able to verify that title is changed to "Add new Spartan"
    And user should be able to verify that "Add Spartan" text is displayed

  Scenario: Adding spartan
    And user enter the spartan information
      |Name  |Oguzhan   |
      |Gender|Male      |
      |Phone |1237894564|
    And user clicks on "Submit" button
    Then user should be able to verify that "Succesfully Added new Data!" message is displayed
    And user should be able to verify that new spartan informations are matched
    And user clicks on  "Back to the List" button
    And user should be able to verify that last row of table is new spartan
    And user should verify that total row number equals to total number of spartans displayed