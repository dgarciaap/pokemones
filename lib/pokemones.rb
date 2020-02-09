require "pokemones/version"
require "httparty"
require "json"

module Pokemones
  class Error < StandardError; end
  include HTTParty

  base_uri "pokeapi.co"

  #up to 400
  def self.find_by_id(id)
	result = get("/api/v2/pokemon/#{id}").parsed_response["name"]
	generate_json(result)
  end

  #up to 17
  def self.find_place(id)
	  result = get("/api/v2/encounter-method/#{id}").parsed_response["names"][1]["name"]
	  generate_json(result)
  end

  def self.random_encounter
	  puts "You have found #{find_by_id(rand(1..400))}, #{find_place(rand(1..17))}"
  end

  private
  
  	def self.generate_json(data)
	  JSON.pretty_generate(data)
  	end
end
