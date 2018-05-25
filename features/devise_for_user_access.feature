Feature: Logged in user can access article show view
  As a user
  In order to gain access to different features in the site
  I should be able to create an account and login

Background:
  Given we have the following articles
    | headline                  | content     |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
    | Another awesome articles  | Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |

  And I am on the landing page

Scenario: A logged i user can access article show view
  Given user is signed in
  When I click "The awesome article"
  And I should see "The awesome article"
  And I should see "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I should not see "Another awesome articles"
  And I should not see "Excepteur sint occaecat cupidatat non proident"
  
