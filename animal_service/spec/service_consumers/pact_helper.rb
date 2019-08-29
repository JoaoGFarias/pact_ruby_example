require 'pact/provider/rspec'

Pact.service_provider "Animal Service" do

  honours_pact_with 'Zoo App' do

    # This example points to a local file, however, on a real project with a continuous
    # integration box, you would use a [Pact Broker](https://github.com/pact-foundation/pact_broker) or publish your pacts as artifacts,
    # and point the pact_uri to the pact published by the last successful build.

    pact_uri '../zoo_app/spec/pacts/zoo_app-animal_service.json'
  end
end

require './spec/service_consumers/provider_states/global_state.rb'
require './spec/service_consumers/provider_states/zoo_app_states.rb'