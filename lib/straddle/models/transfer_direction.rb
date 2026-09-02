# frozen_string_literal: true

module Straddle
  module Models
    # Transfer direction relative to the linked bank account. `deposit` moves funds
    # into the account, and `withdrawal` moves funds out.
    module TransferDirection
      extend Straddle::Internal::Type::Enum

      DEPOSIT = :deposit
      WITHDRAWAL = :withdrawal

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
