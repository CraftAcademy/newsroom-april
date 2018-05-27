Feature: Article creation form
  As a Journalist
  In order to be able to create my article
  I would like to have an article creation form

Background:
  Given we have the following categories
    | name    |
    | Sports  |
  Given I am on the landing page
  And I click "Create Article"

Scenario: Journalist creates an article
  When I fill in "Headline" with "The awesome article"
  And I fill in "Content" with "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I select "Sports" from categories menu
  And I click "Save Article"
  Then I should see "Article successfully saved and sent for approval"

Scenario: Journalist leaves headline empty
  When I fill in "Content" with "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I click "Save Article"
  Then I should see "Headline can't be blank"

Scenario: Journalist leaves content empty
  When I fill in "Headline" with "The awesome article"
  And I click "Save Article"
  Then I should see "Content can't be blank"
