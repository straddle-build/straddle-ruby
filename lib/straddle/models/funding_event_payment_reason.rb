# frozen_string_literal: true

module Straddle
  module Models
    # Reason the payment was included in the funding event.
    module FundingEventPaymentReason
      extend Straddle::Internal::Type::Enum

      CREDIT = :credit
      DEBIT = :debit
      REVERSAL = :reversal
      FAILED = :failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
