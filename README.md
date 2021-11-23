# Network for Good Developer Test

[Network for Good](https://www.networkforgood.com/) an equal opportunity employer. We evaluate qualified applicants without regard to race, color, religion, sex, age, sexual orientation, gender identity, national origin, disability, marital or parental status, veteran status, and other legally protected characteristics.

## About the Test

This project is a simple Rails app intended to help you demonstrate:

* Fundamental Ruby programming skills
* Familiarity with the Ruby-on-Rails framework
* Problem-solving abilities
* Ability to use the [Git version control system](https://git-scm.com/)

Your goal is to add functionality and fix bugs so that the app's [RSpec test suite](spec/) and [JS test suite](spec/javascript/) pass. Please do not spend more than _four_ hours on this project; we do not necessarily expect candidates to solve every test. We want to see how you approach this set of problems.

## Prerequisites

* Completing this project requires you to have access to a Ruby development environment in which you are able to install dependencies using [Bundler](https://bundler.io/).

* If you don't have access to a Unix-based development environment (such as macOS or Linux), you can use a browser-based IDE such as [Cloud9](https://aws.amazon.com/cloud9).

* If you have access to a Windows development environment, you should be able to use [RubyInstaller](https://rubyinstaller.org/) to run the app, but that has not yet been tested. If you are able to set this up, please let us know. Pull requests welcome!

* You will need to install `yarn` in order to run JS tests. You can find setup instructions [here](https://classic.yarnpkg.com/en/docs/install).

## Setup Steps

1. Download a copy of the `dev-test` from this URL: https://github.com/network-for-good/dev-test/archive/main.zip.  We don't recommend cloning the `dev-test` repository, because you will be delivering your solution as a private repository pull request (see Delivery Instructions, below).

2. Run the `bin/setup` command to install the app's dependencies and prepare the application's [SQLite](https://sqlite.org/index.html) database.

3. Run the command `yarn install` to install JS dependencies.

4. Run the command `rspec` to exercise the Ruby test suite. You should see a list of test failures.

5. Run the command `yarn test` to exercise the JS test suite.

## Development

* Add and change Ruby code to make the test suite pass successfully by running `rspec`. You should not need to make any changes to the specs.

* The application views use Network for Good's design system, [NFG UI](https://github.com/network-for-good/nfg_ui). You may want to refer to NFG UI's [documentation site](https://nfg-ui-display-app.herokuapp.com/elements/buttons?stylesheet=public).

* You may see warning messages related to the NFG UI gem, such as `warning: already initialized constant NfgUi::Components::Utilities::ResourceThemeable::FALLBACK_ICO`. These warnings may be safely disregarded.

* When complete, you will see a success message such as: `15 examples, 0 failures`.

* Add and change JS code to make the test suite pass successfully by running `yarn test`. Update the two JS tests with 'fail('Todo')' with tests that verify the action described in the description of the test.

* When complete, you will see a success message such as:  `Tests:       8 passed, 8 total`

## Front-End Development

* Visit the `elements/html_test` page locally to view the questions. Add and change the HAML code to answer the questions. You should not need to make any changes to CSS.

* Please provide your answers within that file.

## Delivery Instructions

Solutions should be delivered via GitHub, since Network for Good uses GitHub for source control. Part of our assessment includes evaluating your ability to use Git branches and pull requests. Once your solution is complete:

1. Create a private GitHub repository within your personal GitHub account. You should suffix the repository name with your GitHub user name. For example, if `@subelsky` delivers an solution, the private repository would be named `dev-test-subelsky`. Refer to [these instructions](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/setting-repository-visibility) to ensure your solution is private.

2. Create a branch within your private repository called `solution`. For example, the solution delivered by `@subelsky` appears here: https://github.com/subelsky/dev-test-subelsky/tree/solution. (Note: this example is a `public` repository, but your solution should be `private`).

3. Create a pull request that specifies the changes you wish to merge from the `solution` branch into the `main` branch. In our example, `@subelsky` delivered a (simulated) solution: https://github.com/subelsky/dev-test-subelsky/pull/1.

4. Add the following GitHub accounts to your private repository as collaborators, so that we can see your pull request:

* [@hoenth](http://github.com/hoenth)
* [@subelsky](https://github.com/subelsky)
* [@kylejmorin](https://github.com/kylejmorin)

These steps mirror the code review process used by Network for Good.

## Opportunities at Network for Good

Please refer to our [careers](https://www.networkforgood.com/about/careers/) page for more details.
