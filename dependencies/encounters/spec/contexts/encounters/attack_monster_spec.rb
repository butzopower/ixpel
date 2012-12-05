require_relative "../../../app/contexts/encounters/attack_monster"
require_relative "../../../app/models/encounters/user"
require_relative "../../../app/models/encounters/monster"

describe Encounters::AttackMonster do
  let(:users_manager) { mock("users manager")}
  let(:monsters_manager) { mock("monsters manager") }

  it "can execute an attack on a monster" do
    user = Encounters::User.new(strength: 5)
    monster = Encounters::Monster.new(hp: 5)
    attack_monster = Encounters::AttackMonster.new(users_manager, monsters_manager)

    users_manager.should_receive(:get_user).with(:user_id).and_return(user)
    monsters_manager.should_receive(:get_monster).with(:monster_id).and_return(monster)

    attack_monster.execute(:user_id, :monster_id)

    monster.hp.should == 0
  end

  it "returns the result of the attack" do
    user = Encounters::User.new(strength: 1)
    monster = Encounters::Monster.new(hp: 2)
    attack_monster = Encounters::AttackMonster.new(users_manager, monsters_manager)

    users_manager.should_receive(:get_user).twice.with(:user_id).and_return(user)
    monsters_manager.should_receive(:get_monster).twice.with(:monster_id).and_return(monster)

    result = attack_monster.execute(:user_id, :monster_id)
    result.should be_false

    result = attack_monster.execute(:user_id, :monster_id)
    result.should be_true
  end
end