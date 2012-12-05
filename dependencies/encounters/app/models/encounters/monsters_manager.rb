require_relative "monster"

module Encounters # TODO: move this should move to it's own engine
  class MonstersManager
    def get_monster(monster_id)
      if monster_id == 1
        Monster.new(id: 1, name: "Skeleton", hp: 5)
      end
    end
  end
end