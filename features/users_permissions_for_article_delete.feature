Feature: Users have different premissions for article creation, depeneding on their roles (editor, journalist, subscriber)
  As a owner
  In order to restrict how much access different users have
  I would like to add different user roles

Background:
  Given the following users exist
    | email                 | role        |
    | editor@test.com       | editor      |
    | journalist@test.com   | journalist  |
    | subscriber@test.com   | subscriber  |

  And we have the following articles
    | headline             | user                 | published |
    | The Awesome Article  | journalist@test.com  |true       |

Scenario: Subscriber can Not see delete button
  Given I am signed in as "subscriber@test.com"
  And I am on the "The Awesome Article" page
  Then I should not see "Delete"

Scenario: Journalist do Not see delete button
  Given I am signed in as "journalist@test.com"
  And I am on the "The Awesome Article" page
  Then I should not see "Delete"

Scenario: Editor can delete any article
  Given I am signed in as "editor@test.com"
  And I am on the "The Awesome Article" page
  When I click "Delete"
  Then I should see "Article was successfully deleted!"
  When I am on the landing page
  Then I should not see "The Awesome Article"
