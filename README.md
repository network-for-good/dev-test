# Network for Good Developer Test

[Network for Good](https://www.networkforgood.com/) an equal opportunity employer. We evaluate qualified applicants without regard to race, color, religion, sex, age, sexual orientation, gender identity, national origin, disability, marital or parental status, veteran status, and other legally protected characteristics.

## About the Test

This project is a simple Rails app intended to help you demonstrate:

* Fundamental Ruby programming skills
* Familiarity with the Ruby-on-Rails framework
* Problem-solving abilities
* Ability to use the [Git version control system](https://git-scm.com/)

Your goal is to add functionality and fix bugs so that the app's [RSpec test suite](spec/) passes.

## Preqrequisites

* Completing this project requires you to have access to a Ruby development environment in which you are able to install dependencies using [Bundler](https://bundler.io/).

* If you don't have access to a Unix-based development environment (such as macOS or Linux), you can use a browser-based IDE such as [Cloud9](https://aws.amazon.com/cloud9).

* If you have access to a Windows development environment, you should be able to use [RubyInstaller](https://rubyinstaller.org/) to run the app, but that has not yet been tested. If you are able to set this up, please let us know. Pull requests welcome!

## Setup Steps

1. Clone this repository into your development environment using Git.

2. Run the `bin/setup` command to install the app's dependencies and prepare the application's [SQLite](https://sqlite.org/index.html) database.

3. Run the command `rspec` to exercise the test suite. You should see a list of test failures.

## Development

* Add and change Ruby code to make the test suite pass successfully by running `rspec`.

* The application views use Network for Good's design system, [NFG UI](https://github.com/network-for-good/nfg_ui). You may want to refer to NFG UI's [documentation site](https://nfg-ui-display-app.herokuapp.com/bootstrap/badges).

* You may see warning messages related to the NFG UI gem, such as `warning: already initialized constant NfgUi::Components::Utilities::ResourceThemeable::FALLBACK_ICO`. These warnings may be safely disregarded.

* When complete, you will see a success message such as: `15 examples, 0 failures`.

## Delivery Instructions

When your changes are complete, please push your code to a private Git repository. Since Network for Good uses GitHub for source control, we recommend you push your code to GitHub, but this is not required.

If you are using GitHub, please make the repository private by following these direction: ["Setting Repository Visibility"](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/setting-repository-visibility). Add the following users as collaborators:

* [@hoenth](http://github.com/hoenth)
* [@subelsky](https://github.com/subelsky)

If you prefer not to use GitHub, you can instead clone this repository and push your changes to another Git host such as [GitLab](https://gitlab.com/) or [BitBucket](https://bitbucket.org/). In this case, please email us the directions for how to access your project files.

If you are not able to use a hosting service, we will also accept Git archive ZIP files as email attachments. See [Git's documentation](https://git-scm.com/docs/git-archive#_examples) to learn how to create a ZIP archive of a Git repository.

## Opportunities at Network for Good

Please refer to our [careers](https://www.networkforgood.com/about/careers/) page for more details.
