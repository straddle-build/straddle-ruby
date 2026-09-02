# frozen_string_literal: true

module Straddle
  module Models
    module PaykeyBalanceRefreshStatus
      extend Straddle::Internal::Type::Enum

      PENDING = :pending
      COMPLETED = :completed
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
