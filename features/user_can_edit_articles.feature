Feature: Journalist can edit articles
  As a journalist
  In order to update my articles
  I would like to be able to edit and resubmit my articles

Background:
  Given the following users exist
    | email                 | role        |
    | journalist@test.com   | journalist  |

  And we have the following articles
    | headline            | content                    | user                 | published |
    | The awesome article | Lorem ipsum dolor sit amet | journalist@test.com  |true      |

  And I am signed in as "journalist@test.com"
  And I am on the "The awesome article" page
  And I click "Edit"

Scenario: Journalist edits an article
  Then I should see "Edit Article"
  And I should see "The awesome article" in "article headline" field
  And I should see "Lorem ipsum dolor sit amet" in "article content" field
  When I fill in "Headline" with "The modified article"
  And I fill in "Content" with "This is the modified text content"
  And I click "Save Article"
  Then I should see "Article was successfully saved and sent for approval"

Scenario: Journalist leaves headline empty
    When I fill in "Headline" with ""
    And I click "Save Article"
    Then I should see "Headline can't be blank"

Scenario: Journalist leaves content empty
    When I fill in "Content" with ""
    And I click "Save Article"
    Then I should see "Content can't be blank"
