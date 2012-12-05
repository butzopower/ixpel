require_relative '../../../app/models/encounters/users_manager'

describe Encounters::UsersManager do
  def seed_users
    # NO OP, fill in when you persist
  end

  it "can fetch a user" do
    seed_users
    
    users_manager = Encounters::UsersManager.new
    user = users_manager.get_user(1)
    user.id.should == 1
  end
end