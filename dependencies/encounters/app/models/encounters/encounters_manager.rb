require_relative 'encounter'
require_relative 'monster'

module Encounters
  class EncountersManager
    def get_encounters
      encounters
    end

    def get_encounter(encounter_id)
      encounters.find {|encounter| encounter.id == encounter_id} ||
        raise(EncounterNotFound, "No encounter found for id #{encounter_id}")
    end

    private

    def encounters
      [Encounter.new(id: 1,
                     call_to_action: "Fight the Skeleton",
                     monster: Monster.new(id: 1, name: "Skeleton")
       )]
    end

  end

  class EncounterNotFound < Exception; end
end