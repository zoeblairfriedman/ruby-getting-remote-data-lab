require 'open-uri'
require 'json'
require 'net/http'
require 'pry'

class GetRequester
    attr_accessor :url

def initialize(url)
    @url = url
end

def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
end

def parse_json
    parsed_json = JSON.parse(self.get_response_body)
     parsed_json.collect do |item|
       item
     end

end

end