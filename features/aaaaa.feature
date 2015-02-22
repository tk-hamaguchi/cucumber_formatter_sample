Feature: Passing background with scenario outlines sample

  Background:
    Given '10' cukes
    Then the multiline string should be
      """
      I'm a cucumber and I'm okay. 
      I sleep all night and I test all day
      """

  Scenario: aaaa
    Scenario: bbbb

      Scenario: another passing background
        Then I should have '10' cukes
        Then the table should be
          |a|b|
          |c|d|
        Then the multiline string should be
          """
          I'm a cucumber and I'm okay. 
          I sleep all night and I test all day
          """

      Scenario Outline: passing background
        Then I should have '<count>' cukes
        Examples:
          |count|
          | 10  |

      Scenario Outline: another passing background
        Then I should have '<count>' cukes
        Examples:
          |count|
          | 10  |
