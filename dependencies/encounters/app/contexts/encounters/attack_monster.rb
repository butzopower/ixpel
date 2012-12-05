module Encounters
  class AttackMonster
    def initialize(users_manager, monsters_manager)
      @users_manager = users_manager
      @monsters_manager = monsters_manager
    end

    def execute(user_id, monster_id)
      user = @users_manager.get_user(user_id)
      monster = @monsters_manager.get_monster(monster_id)

      user.extend(Attacker)
      monster.extend(Attackee)

      user.attack(monster)

      monster.hp <= 0
    end

    module Attacker
      def attack(attackee)
        attackee.hp -= attack_value
      end

      private

      def attack_value
        strength
      end
    end

    module Attackee
      attr_writer :hp
    end
  end
end