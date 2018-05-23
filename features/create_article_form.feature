Feature: Article creation form
  As a Journalist
  In order to be able to create my article
  I would like to have an article creation form

Scenario: Journalist creates an article
  Given I am on the landing page
  When I click "Create Article"
  And I fill in "Headline" with "The awesome article"
  And I fill in "Content" with "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
  And I click "Save Article"
  Then I should see "Article successfully saved and sent for approval"
