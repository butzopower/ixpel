require_relative '../../../app/contexts/encounters/fetch_encounter'

describe Encounters::FetchEncounter do
  let(:encounter_manager) { mock("encounter fetcher") }

  it "should return an encounter when one is found" do
    fetch_encounter = Encounters::FetchEncounter.new(1, encounter_manager)

    encounter_manager.should_receive(:get_encounter).with(1).and_return(:encounter1)

    encounter = fetch_encounter.execute

    encounter.should == :encounter1
  end

  it "should return nil when nothing is found" do
    fetch_encounter = Encounters::FetchEncounter.new(1, encounter_manager)

    encounter_manager.should_receive(:get_encounter).with(1).and_raise(Encounters::EncounterNotFound)

    encounter = fetch_encounter.execute

    encounter.should be_nil
  end
end