# A quick 'n' dirty function for indenting a string; we use it for the
# git shortlog output.
class String
	def indent(char, level = nil)
		level ||= 1
		"#{char * level}" + self.gsub(/\n/, "\n#{char * level}")
	end
end

def send_email(to, opts = {})
	require 'net/smtp'

	opts[:server]      ||= 'localhost'
	opts[:from]        ||= 'robot@localhost'
	opts[:from_alias]  ||= 'The Git Summary Robot'
	opts[:subject]     ||= ""
	opts[:body]        ||= ""

	msg = <<END_OF_MESSAGE
From: #{opts[:from_alias]} <#{opts[:from]}>
To: <#{to}>
MIME-Version: 1.0
Content-type: text/html; charset=UTF-8
Subject: #{opts[:subject]}

#{opts[:body]}
END_OF_MESSAGE

	Net::SMTP.start(opts[:server]) do |smtp|
		smtp.send_message msg, opts[:from], to
	end
end

