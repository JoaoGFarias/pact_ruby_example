Pact.provider_states_for "Zoo App" do

    set_up do
        # Setup to be run before EACH INTERACTION
      end
      
    provider_state "an alligator exists" do
      set_up do
        # Setup for this specific state
      end
      tear_down do
        # Tear Down for this specific state
      end
    end
  
    tear_down do
        # Tear Down to be run after EACH INTERACTION
    end

end