Feature: Restrict different user roles (editor, journalist, subscriber)
  As a owner
  In order to restrict how much access different users have
  I would like to add different user roles

Background:
  Given the following users exist
    | email                 | role        |
    | editor@test.com       | editor      |
    | journalist@test.com   | journalist  |
    | subscriber@test.com   | subscriber  |
  Given we have the following categories
    | name    |
    | Sports  |

Scenario: Subscriber can NOT see the Create Article button
  Given I am signed in as "subscriber@test.com"
  And I am on the landing page
  Then I should not see "Create Article"

Scenario: Subscriber can NOT create articles by accessing New Article path
  Given I am signed in as "subscriber@test.com"
  When I visit the new article page
  Then I should see "You are not authorized to perform this action!"

Scenario: Journalist creates an article
  Given I am signed in as "journalist@test.com"
  And I am on the landing page
  When I click "Create Article"
  When I fill in "Headline" with "The new article"
  And I fill in "Content" with "This is the new text content"
  And I select "Sports" from categories menu
  And I click "Save Article"
  Then I should see "Article successfully saved and sent for approval"
  When I am on the landing page
  Then I should not see "The new article"

Scenario: Editor creates an article then deletes it
  Given I am signed in as "editor@test.com"
  And I am on the landing page
  When I click "Create Article"
  When I fill in "Headline" with "The new article"
  And I fill in "Content" with "This is the new text content"
  And I click "Save Article"
  Then I should see "Article successfully published"
  When I am on the landing page
  Then I should see "The new article"
  When I click "The new article"
  And I click "Delete"
  Then I should see "Article successfully deteled!"
  When I am on the landing page
  Then I should not see "The new article"
