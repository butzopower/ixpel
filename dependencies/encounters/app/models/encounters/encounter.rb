require 'active_model/conversion'

module Encounters
  class Encounter
    include ActiveModel::Conversion # should we be doing this here? or mixing it in the context?

    attr_reader :id, :call_to_action, :monster

    def initialize(attributes)
      @id = attributes[:id]
      @call_to_action = attributes[:call_to_action]
      @monster = attributes[:monster]
    end
  end
end
