Feature: Web Data Page
  Background: Given user logged in as user
    Given user is on Web Data page

  Scenario: "Back to Home" button verification
    And user sees "Back to Home" button is displayed
    When user clicks on "Back to Home" button
    Then user should verify title changed to "Spartan Home"

  Scenario: "Total" Spartans' Number verification
    When user sees the number of Spartans displayed
    Then user should verify it is equal to total number of Spartans in the table

  Scenario Outline: Table column names verification
    When user looks at the table
    Then user should verify "<columnNames>" are displayed
    Examples:
      |columnNames|
      |ID         |
      |Name       |
      |Phone      |
      |Gender     |
      |View       |

  Scenario: ID column verification
    When user sees ID column values
    Then user should verify that ID value is int only
    And total number of ID values is equal to Total number of Spartans displayed

  Scenario: Name column verification
    When user sees Name column values
    Then user should verify that Name value is String only
    And user should verify that Name is between 2-15 characters
    And total number of Name values is equal to Total number of Spartans displayed

  Scenario: Phone column verification
    When user sees Phone column values
    Then user should verify that Phone value is long only
    And user should verify that Phone number length is minimum 10 digits
    And total number of Phone values is equal to Total number of Spartans displayed

  Scenario: Gender column verification
    When user sees Gender column values
    Then user should verify that Gender value is String only
    And user should verify that Gender value can be Male or Female
    And total number of Gender values is equal to Total number of Spartans displayed

  Scenario: View Column verification
    When user sees View column values
    Then user should verify that View Spartan button is displayed
    And user should verify that View spartan button is clickable
    And total number of View values is equal to Total number of Spartans displayed


