Feature: Spartan Data Page
  Background: Given user logged in as user
    And user is on Web Data page
    When user clicks on View button

  Scenario: Spartan Data verification
    Then user should verify page title changed to Spartan's name
    And user should verify that Spartan Data displayed
    And user should verify Spartan's name, gender, phone information
    And user should see Spartan's Created date and time information
    And user should see Spartan's Updated data and time information

  Scenario: Back to the List button verification
    Then user should verify that "Back to the List" button is displayed
    And user clicks "Back to the List" button
    Then user should verify that title changed to All Spartan

  Scenario: Back to Home button verification
    Then user should verify that "Back to Home" button is displayed
    And user clicks "Back to Home" button
    Then user should verify that title changed to Spartan Home