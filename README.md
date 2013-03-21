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

## Running as a cronjob

Precis works best if you run it as a cronjob; that way, you don't have
to remember to run it, and you get summaries in your inbox every
day/week/month.

Here's a sample crontab that for a daily summary; this one runs at 11pm
every night:

	0 23 * * * precis daily foo@example.com /path/to/repo1 /path/to/repo2

…and one for a weekly summary; this one runs at 11pm on a Friday:

	0 23 * * 5 precis daily foo@example.com /path/to/repo1 /path/to/repo2

