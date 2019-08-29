require 'httparty'
require_relative 'Alligator'

class AnimalServiceClient
    include HTTParty
    base_uri 'http://animal-service.com'
  
    def get_alligator
      body = JSON.parse(self.class.get("/alligator").body)
      name = body['name']
      age = body['age']
      Alligator.new(name.downcase, age)
    end
  end