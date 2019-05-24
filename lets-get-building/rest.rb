require 'rest-client'

class SearchBing
    BASE_URL = 'https://www.bing.com/search?q='

    def search
        puts "What do you want to search for?"
        query = gets.chomp
        print_result(RestClient.get(BASE_URL << query))
    end

    def print_result(result)
        print "Code: \n#{result.code}\n\n"
        print "Header: \n#{result.headers}\n\n"
        print "Body: \n#{result.body}\n\n"
        print "Cookies: \n#{result.cookies}\n\n"
    end
end

bing = SearchBing.new
bing.search