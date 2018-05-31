Feature: Users have different premissions for editing article, depeneding on their roles (editor, journalist, subscriber)
  As a owner
  In order to restrict how much access different users have
  I would like to add different user roles

Background:
  Given the following users exist
    | email                 | role        |
    | editor@test.com       | editor      |
    | journalist_1@test.com | journalist  |
    | journalist_2@test.com | journalist  |
    | subscriber@test.com   | subscriber  |

  And we have the following articles
    | headline             | user                   |
    | The Awesome Article  | journalist_1@test.com  |
    | The Second Article   | journalist_2@test.com  |

Scenario: Subscriber can Not see edit button
  Given I am signed in as "subscriber@test.com"
  And I am on the "The Awesome Article" page
  Then I should not see "Edit"

Scenario: Subscriber can Not edit articles by visiting the edit path
  Given I am signed in as "subscriber@test.com"
  And I visit "The Awesome Article" edit page
  Then I should see "You are not authorized to perform this action!"

Scenario: Journalist can edit his/hers own article and it goes for approval
  Given I am signed in as "journalist_1@test.com"
  And I am on the "The Awesome Article" page
  When I click "Edit"
  And I fill in "Headline" with "The modified article"
  And I click "Save Article"
  Then I should see "Article was successfully saved and sent for approval"
  But when I am on the landing page
  Then I should not see "The Awesome Article"

Scenario: Journalist can Not edit other journalist's articles
  Given I am signed in as "journalist_1@test.com"
  And I am on the "The Second Article" page
  Then I should not see "Edit"

Scenario: Journalist can Not edit other journalist's articles by visiting the edit path
  Given I am signed in as "journalist_1@test.com"
  When I visit "The Second Article" edit page
  Then I should see "You are not authorized to perform this action!"
  And when I am on the landing page
  Then I should see "The Second Article"

Scenario: Editor can edit any article and it gets published
  Given I am signed in as "editor@test.com"
  And I am on the "The Awesome Article" page
  When I click "Edit"
  And I fill in "Headline" with "The modified article"
  And I click "Save Article"
  Then I should see "Article was successfully published"
  And I should see "The modified article"
  When I am on the landing page
  Then I should see "The modified article"
