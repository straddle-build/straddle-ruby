# typed: strong

module Straddle
  module Models
    module Customers
      class ReputationCheck < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::ReputationCheck,
              Straddle::Internal::AnyHash
            )
          end

        # Specific codes related to the Straddle reputation screening results.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

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

        sig { returns(T.nilable(Straddle::Customers::ReputationInsights)) }
        attr_reader :insights

        sig do
          params(insights: Straddle::Customers::ReputationInsights::OrHash).void
        end
        attr_writer :insights

        # Risk score produced by the reputation check.
        sig { returns(T.nilable(Float)) }
        attr_accessor :risk_score

        sig do
          params(
            codes: T.nilable(T::Array[String]),
            decision: Straddle::Customers::VerificationDecision::OrSymbol,
            insights: Straddle::Customers::ReputationInsights::OrHash,
            risk_score: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Specific codes related to the Straddle reputation screening results.
          codes: nil,
          decision: nil,
          insights: nil,
          # Risk score produced by the reputation check.
          risk_score: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T.nilable(T::Array[String]),
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol,
              insights: Straddle::Customers::ReputationInsights,
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
