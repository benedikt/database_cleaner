Feature: database cleaning
  In order to ease example and feature writing
  As a developer
  I want to have my database in a clean state with default strategy

  Scenario Outline: ruby app with adapter gems
    Given I am using <ORM> from its adapter gem
    And the default cleaning strategy

    When I run my scenarios that rely on a clean database
    Then I should see all green

  Examples:
    | ORM          |
    | ActiveRecord |
    | CouchPotato  |
    | DataMapper   |
    | Mongoid      |
    | MongoMapper  |
    | Neo4j        |
    | Ohm          |
    | Redis        |
    | Sequel       |

  Scenario Outline: ruby app
    Given I am using <ORM>
    And the default cleaning strategy

    When I run my scenarios that rely on a clean database
    Then I should see all green

  Examples:
    | ORM          |
    | ActiveRecord |
    | DataMapper   |
    | Sequel       |
    | MongoMapper  |
    | Mongoid      |
    | CouchPotato  |
    | Redis        |
    | Ohm          |
    | Neo4j        |
