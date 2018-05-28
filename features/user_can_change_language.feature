Feature: User can change application language
  As an user
  In order to have a better user experance
  I would like to have the site in my native language

Background:
  Given we have the following articles
    | headline                  | content       |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
    | Another awesome articles  | Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |

Scenario: User changes application language to sv
  Given I am on the landing page
  And I should see "The awesome article"
  When I click "Svenska"
  Then I should see "Den fantastiska artikeln"
  And I should see "Alla"
