require_relative '../../../app/models/encounters/monsters_manager'

describe Encounters::EncountersManager do
  def seed_monsters
    #NO OP until we persist
  end

  it "can fetch a monster" do
    seed_monsters

    monsters_manager = Encounters::MonstersManager.new
    monster = monsters_manager.get_monster(1)
    monster.name.should == "Skeleton"
  end
end