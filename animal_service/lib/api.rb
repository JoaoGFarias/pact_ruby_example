require 'sinatra/base'
require 'json'

module AnimalServiceAPI

  class Api < Sinatra::Base

    get '/alligator' do
      content_type :json
      { :name => "BETTY", :age => 8 }.to_json
    end

  end
end