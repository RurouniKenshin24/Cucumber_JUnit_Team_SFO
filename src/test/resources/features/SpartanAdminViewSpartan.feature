Feature: View Spartan Information

  Background: Given user logged in as an admin
    Given admin is on Web Data page
    When user clicks "View" button

  Scenario: Reading spartan information
    Then user should be able to verify that title is changed to spartan name
    And user should be able to verify that "Spartan Data" text is displayed
    And user should be able to verify that name equals to the spartan name
    And user should be able to verify that gender equals to the spartan gender
    And user should be able to verify that gender equals to the spartan phone

  Scenario: Back to the List button verification
    Then user should be able to verify that "Back to the List" button is displayed
    And user clicks on  "Back to the List" button
    Then user should be able to verify that title changed to "All Spartan"

  Scenario: Back to Home button verification
    Then user should be able to verify that "Back to Home" button is displayed
    And user clikcs "Back to the Home" button
    Then user should be able to verify that title changed to "Spartan Home"