# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      class AccountNameMatchDetails < Straddle::Internal::Type::BaseModel
        # @!attribute codes
        #   Result codes returned by the name-match check.
        #
        #   @return [Array<String>]
        required :codes, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        required :decision, enum: -> { Straddle::Paykeys::PaykeyVerificationResult }

        # @!attribute correlation_score
        #   Strength of the match between the customer name and account-holder names.
        #
        #   @return [Float, nil]
        optional :correlation_score, Float, nil?: true

        # @!attribute customer_name
        #   Customer name evaluated during account verification.
        #
        #   @return [String, nil]
        optional :customer_name, String, nil?: true

        # @!attribute matched_name
        #   Account-holder name that matched the customer record.
        #
        #   @return [String, nil]
        optional :matched_name, String, nil?: true

        # @!attribute names_on_account
        #   Account-holder names returned by the financial institution.
        #
        #   @return [Array<String>, nil]
        optional :names_on_account, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute reason
        #   Reason for the name-match decision.
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(codes:, decision:, correlation_score: nil, customer_name: nil, matched_name: nil, names_on_account: nil, reason: nil)
        #   @param codes [Array<String>] Result codes returned by the name-match check.
        #
        #   @param decision [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        #
        #   @param correlation_score [Float, nil] Strength of the match between the customer name and account-holder names.
        #
        #   @param customer_name [String, nil] Customer name evaluated during account verification.
        #
        #   @param matched_name [String, nil] Account-holder name that matched the customer record.
        #
        #   @param names_on_account [Array<String>, nil] Account-holder names returned by the financial institution.
        #
        #   @param reason [String, nil] Reason for the name-match decision.
      end
    end
  end
end
