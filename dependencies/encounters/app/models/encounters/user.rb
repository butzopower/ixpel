module Encounters
  class User
    attr_reader :id, :strength

    def initialize(attributes)
      @id = attributes[:id]
      @strength = attributes[:strength] || 0
    end
  end
end
