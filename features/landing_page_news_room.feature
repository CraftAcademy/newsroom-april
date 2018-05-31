Feature: Article overview and headline on landing page
  As a User
  In order to see what articles are available
  I should see a list of articles with headline and overview

Background:
  Given we have the following articles
    | headline                  |
    | The awesome article       |
    | Another awesome articles  |

  And I am on the landing page

Scenario: User can see articles on landing page
  Given user is signed in
  Then I should see "News Room"
  And I should see "The awesome article"
  And I should see "Another awesome articles"
