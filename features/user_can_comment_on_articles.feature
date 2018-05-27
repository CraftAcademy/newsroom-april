Feature: User can make comments to article
  As a User
  In order to express my opinion on the article
  I would like to have the ability to make a comment

Background:
  Given we have the following articles
    | headline                  | content     |
    | The awesome article       | Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. |
    | Another awesome articles  | Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. |

Scenario: User visits articles and leaves comments
  Given user is signed in
  And I am on the landing page
  And I click "The awesome article"
  And I fill in "Content" with "this article was awesome"
  And I click "Save"
  Then I should see "Comment successfully saved and sent for approval"
