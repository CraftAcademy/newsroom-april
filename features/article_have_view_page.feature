Feature: Shows article in view
  As a subscriber
  In order to view full article
  I should have a article view page

Background:
  Given we have the following articles
    | headline                  | content     |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
    | Another awesome articles  | Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |

Scenario: Subscriber views full article
  Given I am on the landing page
  And I click "The awesome article"
  Then I should see "The awesome article"
  And I should see "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
