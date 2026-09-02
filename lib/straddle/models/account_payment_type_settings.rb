# frozen_string_literal: true

module Straddle
  module Models
    class AccountPaymentTypeSettings < Straddle::Internal::Type::BaseModel
      # @!attribute charges
      #   Status of charge support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountPaymentTypeSettings::Charges]
      required :charges, enum: -> { Straddle::AccountPaymentTypeSettings::Charges }

      # @!attribute payouts
      #   Status of payout support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountPaymentTypeSettings::Payouts]
      required :payouts, enum: -> { Straddle::AccountPaymentTypeSettings::Payouts }

      # @!method initialize(charges:, payouts:)
      #   @param charges [Symbol, Straddle::Models::AccountPaymentTypeSettings::Charges] Status of charge support for the account.
      #
      #   @param payouts [Symbol, Straddle::Models::AccountPaymentTypeSettings::Payouts] Status of payout support for the account.

      # Status of charge support for the account.
      #
      # @see Straddle::Models::AccountPaymentTypeSettings#charges
      module Charges
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of payout support for the account.
      #
      # @see Straddle::Models::AccountPaymentTypeSettings#payouts
      module Payouts
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
