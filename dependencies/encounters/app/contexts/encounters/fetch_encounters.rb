module Encounters
  class FetchEncounters
    def initialize(encounter_manager)
      @encounter_manager = encounter_manager
    end

    def execute
      @encounter_manager.get_encounters
    end
  end
end