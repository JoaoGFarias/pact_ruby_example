require 'sinatra/base'
require 'json'

module AnimalServiceAPI

  class Api < Sinatra::Base

    get '/alligator' do
      content_type :json
      { :name => "Betty" }.to_json
    end

  end
end