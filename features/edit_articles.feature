Feature: Journalist can edit articles
  As a journalist
  In order to update my articles
  I would like to be able to edit and resubmit my articles

Background:
  Given we have the following articles
    | headline                  | content     |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
  And I am on the "The awesome article" page

Scenario: Journalist edits an article
  When I click on "Edit"
  Then I should see "Edit Article"
  When I fill in "Headline" with "The modified article"
  And I fill in "Content" with "This is the modified text content"
  And I click "Save Article"
  Then I should see "Article successfully saved and sent for approval"
