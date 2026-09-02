# frozen_string_literal: true

module Straddle
  module Models
    module AccountType
      extend Straddle::Internal::Type::Enum

      CHECKING = :checking
      SAVINGS = :savings

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
