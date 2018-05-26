Feature: Logged in user can access article show view
  As a visitor
  In order to see full content of articles
  I should be able to create an account

Background:
  Given we have the following articles
    | headline                  | content     |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
    | Another awesome articles  | Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |

Scenario: A logged i user can access article show view
  Given user is signed in
  And I am on the landing page
  When I click "The awesome article"
  And I should see "The awesome article"
  And I should see "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I should not see "Another awesome articles"
  And I should not see "Excepteur sint occaecat cupidatat non proident"

Scenario: A user not logged in cannot access article show view
  Given I am on the landing page
  When I click "The awesome article"
  And I should not see "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I should be redirected to login page
  And I should see "You need to sign in or sign up before continuing"
