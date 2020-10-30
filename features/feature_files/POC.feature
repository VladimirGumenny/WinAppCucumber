@POC
Feature: Win App POC

  @POC1
  Scenario: Run Ooma Office Win Application
    Given I start Ooma Office Application
    When I enter valid credentials in login window
    And I click on Login button
    Then I verify that user was logged in
    And I log out

  @POC2
  Scenario: Scenario with POM
    Given I start Ooma Office Application using POM
    And I logout if logged in POM
    When I login with valid credentials POM
    Then I verify that user was logged in POM
    And I log out POM