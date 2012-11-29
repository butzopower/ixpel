# TODO: this should be in it's own Monsters engine
module Encounters
  class Monster
    attr_reader :id, :name

    def initialize(attributes)
      @id = attributes[:id]
      @name = attributes[:name]
    end
  end
end