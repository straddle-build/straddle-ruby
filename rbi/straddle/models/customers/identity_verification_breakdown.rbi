# typed: strong

module Straddle
  module Models
    module Customers
      class IdentityVerificationBreakdown < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::IdentityVerificationBreakdown,
              Straddle::Internal::AnyHash
            )
          end

        # List of specific result codes from the fraud and risk screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

        sig do
          returns(
            T.nilable(Straddle::Customers::CorrelationBucket::TaggedSymbol)
          )
        end
        attr_reader :correlation

        sig do
          params(
            correlation: Straddle::Customers::CorrelationBucket::OrSymbol
          ).void
        end
        attr_writer :correlation

        # Represents the strength of the correlation between provided and known
        # information. A higher score indicates a stronger correlation.
        sig { returns(T.nilable(Float)) }
        attr_accessor :correlation_score

        sig do
          returns(
            T.nilable(Straddle::Customers::VerificationDecision::TaggedSymbol)
          )
        end
        attr_reader :decision

        sig do
          params(
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).void
        end
        attr_writer :decision

        # Predicts the inherent risk associated with the customer for a given module. A
        # higher score indicates a greater likelihood of fraud.
        sig { returns(T.nilable(Float)) }
        attr_accessor :risk_score

        sig do
          params(
            codes: T.nilable(T::Array[String]),
            correlation: Straddle::Customers::CorrelationBucket::OrSymbol,
            correlation_score: T.nilable(Float),
            decision: Straddle::Customers::VerificationDecision::OrSymbol,
            risk_score: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # List of specific result codes from the fraud and risk screening.
          codes: nil,
          correlation: nil,
          # Represents the strength of the correlation between provided and known
          # information. A higher score indicates a stronger correlation.
          correlation_score: nil,
          decision: nil,
          # Predicts the inherent risk associated with the customer for a given module. A
          # higher score indicates a greater likelihood of fraud.
          risk_score: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T.nilable(T::Array[String]),
              correlation: Straddle::Customers::CorrelationBucket::TaggedSymbol,
              correlation_score: T.nilable(Float),
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol,
              risk_score: T.nilable(Float)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
