Feature: Shows article in view
  As a user
  In order to view full article
  I should have a article view page

Background:
  Given we have the following articles
    | headline                  | content     |  approval |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. | true |

  And user is signed in

Scenario: User views full article
  Given I am on the landing page
  And I click "The awesome article"
  Then I should see "The awesome article"
  And I should see "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
