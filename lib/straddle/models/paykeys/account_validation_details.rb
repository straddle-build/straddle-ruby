# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      class AccountValidationDetails < Straddle::Internal::Type::BaseModel
        # @!attribute codes
        #   Result codes returned by the account-validation check.
        #
        #   @return [Array<String>]
        required :codes, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        required :decision, enum: -> { Straddle::Paykeys::PaykeyVerificationResult }

        # @!attribute reason
        #   Reason for the account-validation decision.
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(codes:, decision:, reason: nil)
        #   @param codes [Array<String>] Result codes returned by the account-validation check.
        #
        #   @param decision [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        #
        #   @param reason [String, nil] Reason for the account-validation decision.
      end
    end
  end
end
