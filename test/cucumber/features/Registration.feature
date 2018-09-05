Feature:
  In order to easily test the Registration Module
  As a user
  I want to make sure that the app is working properly

  Scenario: Browse the Website and Register with existing NPI
    Given I open the url "https://akosmd.com/test/physicianregnew"
    Then  I expect that element ".hea=Welcome to the Akos Physician Registration Portal" is visible
    And I expect that element "[href='#NPILookUp']" is visible
    When I click on the link "BEGIN NEW APPLICATION PROCESS"
    Then I wait on element ".panel-heading*=NPI Lookup" to be visible
    And I set "1639172109" to the inputfield "*[ng-model='npinumber']"
    When I click on the element "button=Lookup"
    Then I wait on element "[name='email']" to be visible
    And I set "test@test.com" to the inputfield "[name='email']"
    And I set "T3stpassword!" to the inputfield "[name='password']"
    And I set "T3stpassword!" to the inputfield "[name='cpassword']"
    When I click on the element "*[ng-model='dateOfBirth']"
    Then I add "01" to the inputfield "*[ng-model='dateOfBirth']"
    And I add "31" to the inputfield "*[ng-model='dateOfBirth']"
    And I add "1996" to the inputfield "*[ng-model='dateOfBirth']"
    When I click on the element "*[ng-model='agree']"
    Then I expect that element "[type=submit]" is enabled
    When I click on the button "[type=submit]"


