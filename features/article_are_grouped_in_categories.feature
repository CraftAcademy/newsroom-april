Feature: Article categories
  As a User
  In order to see what articles are available
  I should see articles categorized

Background:
  Given we have the following categories
    | name          |
    | Sports        |
    | Technology    |

  And we have the following articles
    | headline                            | category   | approval |
    | The sport team won something        | Sports     | true     |
    | Some programers made some new stuff | Technology | true     |

  And I am on the landing page

Scenario: User cateogires bar on index page
  Then I should see "Sports" in "Category Bar"
  And I should see "Technology" in "Category Bar"
  And I should see "All" in "Category Bar"

Scenario: User can see Sports articles only
  Given I click "Sports"
  Then I should see "The sport team won something"
  And I should not see "Some programers made some new stuff"

Scenario: User can see Technology articles only
  Given I click "Technology"
  Then I should see "Some programers made some new stuff"
  And I should not see "The sport team won something"
