Feature: Class comparisson

  As a professor
  I want to compare the performance between different classes
  To evaluate which classes perform better

Scenario: Selecting classes for comparisson
  Given I'm in the "Classes comparisson" screen
  And there are no selected classes
  When I choose "ESS1"
  And I choose “ESS2”
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
  And other classes detailed views are still available
  And I remain on the same screen

Scenario: Report generation/export
  Given I am on the "Comparison visualization" screen
  And no report has been generated
  When I choose "generate report"
  Then a report with the metrics is generated
  And the report is made available for download
  And I remain on the same screen

Scenario: Removing a class from comparison
  Given I am on the "Comparison visualization" screen
  And "ESS1" and "ESS2" "ESS3" are selected for comparison
  When I choose to remove "ESS2" from the selection
  Then only "ESS1" and "ESS3" remain selected
  And the comparison visualization updates accordingly
  And I remain on the same screen

Scenario: Handling comparison with no classes selected
  Given I am on the "Comparison visualization" screen
  And no classes are selected for comparison
  When I attempt to generate a comparison
  Then a message is displayed indicating that at least two classes must be selected
  And no charts or reports are generated
  And I remain on the same screen