module Encounters
  module Monsters
    class AttacksController < Encounters::ApplicationController
      def create
        monsters_manager = MonstersManager.new
        attacking_a_monster = AttackMonster.new(monsters_manager)
        attacking_a_monster.execute(params[:id])
      end
    end
  end
end
