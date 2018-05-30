Feature: Users have different premissions for writing comments, depeneding on their roles (editor, journalist, subscriber)
  As a owner
  In order to restrict how much access different users have
  I would like to add different user roles

Background:
  Given the following users exist
    | email                 | role        |
    | editor@test.com       | editor      |
    | journalist@test.com | journalist  |
    | subscriber@test.com   | subscriber  |

  And we have the following articles
    | headline             | user                   | published |
    | The Awesome Article  | journalist@test.com  | true      |

Scenario: Subscriber can comment on articles and it goes for approval
  Given I am signed in as "subscriber@test.com"
  And I am on the "The Awesome Article" page
  And I fill in "Content" with "this article was awesome"
  And I click "Save"
  Then I should see "Comment was successfully saved and sent for approval"
  When I am on the "The Awesome Article" page
  Then I should not see "this article was awesome"

Scenario: Journalist can comment on articles and it goes for approval
  Given I am signed in as "journalist@test.com"
  And I am on the "The Awesome Article" page
  And I fill in "Content" with "this article was awesome"
  And I click "Save"
  Then I should see "Comment was successfully saved and sent for approval"
  When I am on the "The Awesome Article" page
  Then I should not see "this article was awesome"

Scenario: Editor can comment on articles and it gets published
  Given I am signed in as "editor@test.com"
  And I am on the "The Awesome Article" page
  And I fill in "Content" with "this article was awesome"
  And I click "Save"
  Then I should see "Comment was successfully published"
  When I am on the "The Awesome Article" page
  Then I should see "this article was awesome"
