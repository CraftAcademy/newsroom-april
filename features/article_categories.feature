Feature: Article categories
  As a User
  In order to see what articles are available
  I should see articles categorized

Background:
  Given we have the following articles
    | headline                  |
    | The awesome article       |

Scenario: User sees articles categorized
  Given I am on the landing page
  Then I should see "Sports"
  And I should see "Entertainment"
  And I should not see "Local News"
