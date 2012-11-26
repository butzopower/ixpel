# TODO: this should be in it's own Monsters engine
module Encounters
  class Monster
    attr_reader :name

    def initialize(attributes)
      @name = attributes[:name]
    end
  end
end