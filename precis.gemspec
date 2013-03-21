Gem::Specification.new do |s|
	s.name = "precis"
	s.version = "1.1.0"
	s.executables << 'precis'
	s.date = "2013-03-21"
	s.summary = "Summarises Git activity"
	s.description = "Watches the Git repositories you tell it to, and then emails you a weekly summary of activity."
	s.authors = ["Rob Miller"]
	s.email = "rob@bigfish.co.uk"
	s.files = ["bin/precis", "lib/precis.rb"]
	s.homepage = "https://github.com/robmiller/precis"
end
