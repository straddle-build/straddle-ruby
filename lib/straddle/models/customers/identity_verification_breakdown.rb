# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class IdentityVerificationBreakdown < Straddle::Internal::Type::BaseModel
        # @!attribute codes
        #   List of specific result codes from the fraud and risk screening.
        #
        #   @return [Array<String>, nil]
        optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute correlation
        #
        #   @return [Symbol, Straddle::Models::Customers::CorrelationBucket, nil]
        optional :correlation, enum: -> { Straddle::Customers::CorrelationBucket }

        # @!attribute correlation_score
        #   Represents the strength of the correlation between provided and known
        #   information. A higher score indicates a stronger correlation.
        #
        #   @return [Float, nil]
        optional :correlation_score, Float, nil?: true

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision, nil]
        optional :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!attribute risk_score
        #   Predicts the inherent risk associated with the customer for a given module. A
        #   higher score indicates a greater likelihood of fraud.
        #
        #   @return [Float, nil]
        optional :risk_score, Float, nil?: true

        # @!method initialize(codes: nil, correlation: nil, correlation_score: nil, decision: nil, risk_score: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Customers::IdentityVerificationBreakdown} for more details.
        #
        #   @param codes [Array<String>, nil] List of specific result codes from the fraud and risk screening.
        #
        #   @param correlation [Symbol, Straddle::Models::Customers::CorrelationBucket]
        #
        #   @param correlation_score [Float, nil] Represents the strength of the correlation between provided and known informatio
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]
        #
        #   @param risk_score [Float, nil] Predicts the inherent risk associated with the customer for a given module. A hi
      end
    end
  end
end
