require_relative "user"

module Encounters # TODO: this definitely belongs in it's own namespace
  class UsersManager
    def get_user(user_id)
      if user_id == 1
        User.new(id: 1, name: "Big Brother", strength: 10)
      end
    end
  end
end