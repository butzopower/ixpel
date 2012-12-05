module Encounters
  module Monsters
    class AttacksController < Encounters::ApplicationController
      def create
        current_user_id = 1
        monsters_manager = MonstersManager.new
        users_manager = UsersManager.new
        attacking_a_monster = AttackMonster.new(users_manager, monsters_manager)
        monster_is_defeated = attacking_a_monster.execute(current_user_id, params[:monster_id].to_i)
        if monster_is_defeated
          render "won"
        else
          redirect_to encounter_path(params[:encounter_id])
        end
      end
    end
  end
end
