Feature: Class comparisson

  As a professor
  I want to compare the performance between different classes
  To evaluate which classes perform better

Scenario: Selecting classes for comparisson
  Given I'm in the "Classes comparisson" screen
  And there are no selected classes
  When I choose "ESS1"
  And I chosse “ESS2”
  And I confirm the operation
  Then I go to the screen “Comparisson visualiation"

Scenario: Graphical visualization of averages
  Given I am on the "Comparison visualization" screen
  When I choose to generate the table
  And I confirm the operation
  Then bar charts with the class information are generated
  And the charts are displayed
  And I remain on the same screen

Scenario: Detailed display of metrics per class
  Given I am on the "Comparison visualization" screen
  When I choose "Detailed view"
  And I choose "ESS1"
  Then detailed statistics for "ESS1" are shown
  And I remain on the same screen