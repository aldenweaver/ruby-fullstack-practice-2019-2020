# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)
 
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]

require 'pry'

class EmailAddressParser
    def initialize(emails) 
        @emails = emails
    end
    
    def emails
        @emails
    end

    def emails=(emails)
        @emails = emails
    end

    def parse
        # Split on commas and whitespace
        # Filter out empty strings
        # Filter out duplicates
        @emails.split(/[ ,]/).select {|string| string != ""}.uniq
    end
end


