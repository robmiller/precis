# Precis

Precis is a tool, designed to be run from a cron job, that takes a look
at the activity on your Git repositories and emails you a nice summary.

## Installation

Precis can be installed via RubyGems:

	% gem install precis

## Usage

	% precis period emails repositories...

For example:

	% precis weekly "rob@example.com,brian@example.org" /sites/example.com /sites/example.org

Acceptable values for `period` are `daily`, `weekly`, and `monthly`. You
can pass as many repositories as you like.

