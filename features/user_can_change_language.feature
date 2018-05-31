Feature: User can change application language

  As an user
  In order to have a better user experance
  I would like to have the site in my native language

Background:
  Given I am on the landing page
  And I should see "Sign In"
  And I should see "Sign Up"
  And I should see "Svenska"
  And I should see "News Room"

Scenario: User changes application language to sv
  Given I am on the landing page
  When I click "Svenska"
  And I should see "Logga In"
  And I should see "Bli Medlem"
  And I should see "English"
  And I should see "NyhetsPosten"
