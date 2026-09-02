# frozen_string_literal: true

module Straddle
  module Models
    # The current status of the `charge` or `payout`.
    module PaymentStatus
      extend Straddle::Internal::Type::Enum

      CREATED = :created
      SCHEDULED = :scheduled
      FAILED = :failed
      CANCELLED = :cancelled
      ON_HOLD = :on_hold
      PENDING = :pending
      PAID = :paid
      REVERSED = :reversed
      VALIDATING = :validating

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
