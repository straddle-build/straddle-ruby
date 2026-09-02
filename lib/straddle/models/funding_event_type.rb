# frozen_string_literal: true

module Straddle
  module Models
    # Reason for the funding event. `charge_deposit` settles collected charges to the
    # linked bank account. `charge_reversal` withdraws funds for reversed charges.
    # `payout_withdrawal` withdraws funds for payouts. `payout_return` deposits
    # returned payout funds.
    module FundingEventType
      extend Straddle::Internal::Type::Enum

      CHARGE_DEPOSIT = :charge_deposit
      CHARGE_REVERSAL = :charge_reversal
      PAYOUT_RETURN = :payout_return
      PAYOUT_WITHDRAWAL = :payout_withdrawal

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
