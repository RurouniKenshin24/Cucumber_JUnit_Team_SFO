Feature: Edit Spartan verification

  Background: Given user logged in as an admin
    Given admin is on Web Data page
    When user clicks "Edit" button
    Then user should be able verify that title is changed to "Edit - spartan name"

  Scenario: Editing spartan name
    And user changes the spartan name with <newName>
    And user clicks on "Update" button
    Then user should be able to verify that "Succesfully Updated Data!" message is displayed
    And user should be able to verify that spartan name equals <newName>

  Scenario: Editing spartan gender
    And user changes the spartan gender with <otherGender>
    And user clicks on "Update" button
    Then user should be able to verify that "Succesfully Updated Data!" message is displayed
    And user should be able to verify that spartan gender equals <otherGender>

  Scenario: Editing spartan phone
    And user changes the spartan phone with <newPhoneNumber>
    And user clicks on "Update" button
    Then user should be able to verify that "Succesfully Updated Data!" message is displayed
    And user should be able to verify that spartan phone equals <newPhoneNumber>

  Scenario: Back to the List button verification
    Then user should be able to verify that "Back to the List" button is displayed
    And user clicks on  "Back to the List" button
    Then user should be able to verify that title changed to "All Spartan"

  Scenario: Back to Home button verification
    Then user should be able to verify that "Back to Home" button is displayed
    And user clikcs "Back to the Home" button
    Then user should be able to verify that title changed to "Spartan Home"