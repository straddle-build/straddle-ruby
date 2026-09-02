# frozen_string_literal: true

module Straddle
  module Models
    class AccountCapabilities < Straddle::Internal::Type::BaseModel
      # @!attribute consent_types
      #
      #   @return [Straddle::Models::AccountConsentCapabilities]
      required :consent_types, -> { Straddle::AccountConsentCapabilities }

      # @!attribute customer_types
      #
      #   @return [Straddle::Models::AccountCustomerCapabilities]
      required :customer_types, -> { Straddle::AccountCustomerCapabilities }

      # @!attribute payment_types
      #
      #   @return [Straddle::Models::AccountPaymentCapabilities]
      required :payment_types, -> { Straddle::AccountPaymentCapabilities }

      # @!method initialize(consent_types:, customer_types:, payment_types:)
      #   @param consent_types [Straddle::Models::AccountConsentCapabilities]
      #   @param customer_types [Straddle::Models::AccountCustomerCapabilities]
      #   @param payment_types [Straddle::Models::AccountPaymentCapabilities]
    end
  end
end
