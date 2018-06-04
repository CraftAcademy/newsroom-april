Feature: User can view dynamic content in different languages
  As a user
  In order to have a better user experience
  I would like to have the content in my native language

Background:
  Given the following users exist
    | email                 | role        |
    | subscriber@test.com   | subscriber  |

  And we have the following categories
    | name          |
    | Sports        |
    | Technology    |

  And we have the following categories in swedish
    | name          |
    | Sport         |
    | Teknik        |

  And we have the following articles
    | headline                            | category   |
    | The sport team won something        | Sports     |

  And we have the following articles in swedish
    | headline                            | category   |
    | Laget vann något                    | Sport      |

  And I am signed in as "subscriber@test.com"
  And I am on the landing page

Scenario: User can see the site in English
  Then I should see "News Room"
  And I should see "Sports"
  And I should see "Technology"
  And I should see "The sport team won something"

Scenario: User can see the site in Swedish
  Given I click "Svenska"
  Then I should see "NyhetsPosten"
  And I should see "Sport"
  And I should see "Teknik"
  And I should see "Laget vann något"


  
 
  
