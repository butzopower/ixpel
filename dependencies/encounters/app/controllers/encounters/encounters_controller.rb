module Encounters
  class EncountersController < Encounters::ApplicationController
    def index
      encounter_manager = EncountersManager.new
      fetch_encounters = FetchEncounters.new(encounter_manager)
      @encounters = fetch_encounters.execute
    end

    def show
      encounter_manager = EncountersManager.new
      fetch_encounters = FetchEncounter.new(params[:id].to_i, encounter_manager)
      @encounter = fetch_encounters.execute
    end
  end
end