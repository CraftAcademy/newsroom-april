Feature: Users have different premissions for editing article, depeneding on their roles (editor, journalist, subscriber)
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
    | headline             | user                 | content                     | published |
    | The Awesome Article  | journalist@test.com  | Lorem ipsum dolor sit amet  | true      |

Scenario: Subscriber can Not see edit button
  Given I am signed in as "subscriber@test.com"
  And I am on the "The Awesome Article" page
  Then I should not see "Edit"

Scenario: Journalist can edit his/hers own article
  Given I am signed in as "journalist@test.com"
  And I am on the "The Awesome Article" page
  When I click "Edit"
  And I fill in "Headline" with "The modified article"
  And I fill in "Content" with "LLorem ipsum dolor sit amet"
  And I click "Save Article"
  Then I should see "Article was successfully saved and sent for approval"
  When I am on the landing page
  Then I should not see "The Awesome Article"

Scenario: Editor can edit any article
  Given I am signed in as "editor@test.com"
  And I am on the "The Awesome Article" page
  When I click "Edit"
  And I fill in "Headline" with "The modified article"
  And I fill in "Content" with "LLorem ipsum dolor sit amet"
  And I click "Save Article"
  Then I should see "Article was successfully approval"
  And I should see "The modified article"
  When I am on the landing page
  Then I should not see "The Awesome Article"
