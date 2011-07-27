Feature: Manage sort_stories
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: The story list display should be sorted by priority
    Given the following stories:
      |name               | priority |    
      |unnecessary task   | 3        |
      |emergency task     | 1        |
      |normal task        | 2        |
    When I go to the stories page
    Then I see the tasks like so:
      |emergency task     | 1        |
      |normal task        | 2        |      
      |unnecessary task   | 3        |