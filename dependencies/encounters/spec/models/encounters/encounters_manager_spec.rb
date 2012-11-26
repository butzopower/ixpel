require_relative '../../../app/models/encounters/encounters_manager'

describe Encounters::EncountersManager do
  def seed_encounters
    # NOOP since we don't persist encounters yet
  end

  it "can get encounters" do
    seed_encounters

    encounter_manager = Encounters::EncountersManager.new
    encounters = encounter_manager.get_encounters
    encounters.size.should == 1
    encounters.first.call_to_action.should == "Fight the Skeleton"
  end

  context "encounter exists" do
    it "can get the individual encounter" do
      seed_encounters

      seed_encounters

      encounter_manager = Encounters::EncountersManager.new

      encounter = encounter_manager.get_encounter(1)

      encounter.id.should == 1
      encounter.call_to_action.should == "Fight the Skeleton"
    end
  end

  context "encounter doesn't exist" do
    it "raises an error" do
      seed_encounters

      encounter_manager = Encounters::EncountersManager.new
      -> { encounter_manager.get_encounter(2) }.should raise_error(Encounters::EncounterNotFound)
    end
  end
end