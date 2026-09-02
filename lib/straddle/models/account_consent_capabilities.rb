# frozen_string_literal: true

module Straddle
  module Models
    class AccountConsentCapabilities < Straddle::Internal::Type::BaseModel
      # @!attribute internet
      #   Internet payment authorization capability for the account.
      #
      #   @return [Straddle::Models::AccountCapability]
      required :internet, -> { Straddle::AccountCapability }

      # @!attribute signed_agreement
      #   Signed-agreement payment authorization capability for the account.
      #
      #   @return [Straddle::Models::AccountCapability]
      required :signed_agreement, -> { Straddle::AccountCapability }

      # @!method initialize(internet:, signed_agreement:)
      #   @param internet [Straddle::Models::AccountCapability] Internet payment authorization capability for the account.
      #
      #   @param signed_agreement [Straddle::Models::AccountCapability] Signed-agreement payment authorization capability for the account.
    end
  end
end
