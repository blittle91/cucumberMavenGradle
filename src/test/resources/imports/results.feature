Feature: Results Service

    Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

    @GSFE-516-1 @Unit @Integration @Manual @Compliance @Pending @results
    Scenario Outline: User able to see a list of competitions and events per sport
        Given I am on the results page for <sport>
        And the events are grouped by competition and ordered by start time
        And the top five panels are expanded
        When I expand a non-expanded panel
        Then the events are grouped by competition and ordered by start time

        Examples:
            | sport    |
            | football |
            | golf     |

    @GSFE-516-2 @Unit @Integration @Manual @Pending @results
    Scenario: User able to use the date picker to filter competitions
        Given I am on the results page for football
        When I select a date from the date picker
        Then the competitions and events are displayed for that date

    @GSFE-516-3 @Unit @Pending @results
    Scenario: Verify default date is today's date
