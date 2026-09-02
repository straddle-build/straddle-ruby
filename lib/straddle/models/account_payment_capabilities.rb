# frozen_string_literal: true

module Straddle
  module Models
    class AccountPaymentCapabilities < Straddle::Internal::Type::BaseModel
      # @!attribute charges
      #
      #   @return [Straddle::Models::AccountCapability]
      required :charges, -> { Straddle::AccountCapability }

      # @!attribute payouts
      #
      #   @return [Straddle::Models::AccountCapability]
      required :payouts, -> { Straddle::AccountCapability }

      # @!method initialize(charges:, payouts:)
      #   @param charges [Straddle::Models::AccountCapability]
      #   @param payouts [Straddle::Models::AccountCapability]
    end
  end
end
