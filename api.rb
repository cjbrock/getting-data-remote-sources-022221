require_relative 'character'

require 'rest-client'
require 'json'
require 'pry'


resp = RestClient.get('https://swapi.dev/api/people/')
star_wars_hash = JSON.parse(resp.body, symbolize_names: true)
star_wars_array = star_wars_hash[:results]

character = star_wars_array.collect do | char |
    Character.new(char)
end


binding.pry