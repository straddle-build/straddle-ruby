# frozen_string_literal: true

module Straddle
  module Models
    class AccountPaymentSettings < Straddle::Internal::Type::BaseModel
      # @!attribute charges
      #
      #   @return [Straddle::Models::AccountChargeSettings]
      required :charges, -> { Straddle::AccountChargeSettings }

      # @!attribute payouts
      #
      #   @return [Straddle::Models::AccountPayoutSettings]
      required :payouts, -> { Straddle::AccountPayoutSettings }

      # @!method initialize(charges:, payouts:)
      #   @param charges [Straddle::Models::AccountChargeSettings]
      #   @param payouts [Straddle::Models::AccountPayoutSettings]
    end
  end
end
