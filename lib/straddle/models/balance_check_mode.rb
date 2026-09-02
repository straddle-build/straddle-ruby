# frozen_string_literal: true

module Straddle
  module Models
    module BalanceCheckMode
      extend Straddle::Internal::Type::Enum

      REQUIRED = :required
      ENABLED = :enabled
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
