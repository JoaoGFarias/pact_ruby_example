require_relative "../../lib/AnimalServiceClient"
require_relative "pact_helper"

describe AnimalServiceClient, :pact => true do

    before do
      # Configure your client to point to the stub service on localhost using the port you have specified
      AnimalServiceClient.base_uri 'localhost:1234'
    end
  
    subject { AnimalServiceClient.new }
  
    describe "get_alligator" do
  
      before do
        animal_service.given("an alligator exists").
          upon_receiving("a request for an alligator").
          with(method: :get, path: '/alligator', query: '').
          will_respond_with(
            status: 200,
            headers: {'Content-Type' => 'application/json'},
            body: {name: 'BETTY', age: 8} )
      end
  
      it "returns a alligator" do
        expect(subject.get_alligator).to eq(Alligator.new('betty', 8))
      end
  
    end
  
  end