# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class ReputationCheck < Straddle::Internal::Type::BaseModel
        # @!attribute codes
        #   Specific codes related to the Straddle reputation screening results.
        #
        #   @return [Array<String>, nil]
        optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision, nil]
        optional :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!attribute insights
        #
        #   @return [Straddle::Models::Customers::ReputationInsights, nil]
        optional :insights, -> { Straddle::Customers::ReputationInsights }

        # @!attribute risk_score
        #   Risk score produced by the reputation check.
        #
        #   @return [Float, nil]
        optional :risk_score, Float, nil?: true

        # @!method initialize(codes: nil, decision: nil, insights: nil, risk_score: nil)
        #   @param codes [Array<String>, nil] Specific codes related to the Straddle reputation screening results.
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]
        #
        #   @param insights [Straddle::Models::Customers::ReputationInsights]
        #
        #   @param risk_score [Float, nil] Risk score produced by the reputation check.
      end
    end
  end
end
