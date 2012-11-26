require_relative '../../../app/contexts/encounters/fetch_encounters'

describe Encounters::FetchEncounters do
  let(:encounter_manager) { mock("encounter fetcher") }
  subject(:fetch_encounters) { Encounters::FetchEncounters.new(encounter_manager) }

  it "should return a collection of encounters" do
    encounter_manager.should_receive(:get_encounters).and_return([:encounter1, :encounter2])
    fetch_encounters.execute.should == [:encounter1, :encounter2]
  end
end