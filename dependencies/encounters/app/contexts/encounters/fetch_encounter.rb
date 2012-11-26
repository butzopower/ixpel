require_relative '../../models/encounters/encounters_manager'

module Encounters
  class FetchEncounter
    def initialize(encounter_id, encounter_manager)
      @encounter_id = encounter_id
      @encounter_manager = encounter_manager
    end

    def execute
      begin
        @encounter_manager.get_encounter(@encounter_id)
      rescue EncounterNotFound
        nil
      end
    end
  end
end