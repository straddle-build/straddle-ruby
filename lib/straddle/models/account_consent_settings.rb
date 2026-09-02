# frozen_string_literal: true

module Straddle
  module Models
    class AccountConsentSettings < Straddle::Internal::Type::BaseModel
      # @!attribute internet
      #   Status of internet authorization support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountConsentSettings::Internet]
      required :internet, enum: -> { Straddle::AccountConsentSettings::Internet }

      # @!attribute signed_agreement
      #   Status of signed-agreement authorization support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountConsentSettings::SignedAgreement]
      required :signed_agreement, enum: -> { Straddle::AccountConsentSettings::SignedAgreement }

      # @!method initialize(internet:, signed_agreement:)
      #   @param internet [Symbol, Straddle::Models::AccountConsentSettings::Internet] Status of internet authorization support for the account.
      #
      #   @param signed_agreement [Symbol, Straddle::Models::AccountConsentSettings::SignedAgreement] Status of signed-agreement authorization support for the account.

      # Status of internet authorization support for the account.
      #
      # @see Straddle::Models::AccountConsentSettings#internet
      module Internet
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of signed-agreement authorization support for the account.
      #
      # @see Straddle::Models::AccountConsentSettings#signed_agreement
      module SignedAgreement
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
