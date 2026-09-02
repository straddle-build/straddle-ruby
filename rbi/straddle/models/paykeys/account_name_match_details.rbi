# typed: strong

module Straddle
  module Models
    module Paykeys
      class AccountNameMatchDetails < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::AccountNameMatchDetails,
              Straddle::Internal::AnyHash
            )
          end

        # Result codes returned by the name-match check.
        sig { returns(T::Array[String]) }
        attr_accessor :codes

        sig do
          returns(Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol)
        end
        attr_accessor :decision

        # Strength of the match between the customer name and account-holder names.
        sig { returns(T.nilable(Float)) }
        attr_accessor :correlation_score

        # Customer name evaluated during account verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_name

        # Account-holder name that matched the customer record.
        sig { returns(T.nilable(String)) }
        attr_accessor :matched_name

        # Account-holder names returned by the financial institution.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :names_on_account

        # Reason for the name-match decision.
        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            codes: T::Array[String],
            decision: Straddle::Paykeys::PaykeyVerificationResult::OrSymbol,
            correlation_score: T.nilable(Float),
            customer_name: T.nilable(String),
            matched_name: T.nilable(String),
            names_on_account: T.nilable(T::Array[String]),
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Result codes returned by the name-match check.
          codes:,
          decision:,
          # Strength of the match between the customer name and account-holder names.
          correlation_score: nil,
          # Customer name evaluated during account verification.
          customer_name: nil,
          # Account-holder name that matched the customer record.
          matched_name: nil,
          # Account-holder names returned by the financial institution.
          names_on_account: nil,
          # Reason for the name-match decision.
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T::Array[String],
              decision:
                Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol,
              correlation_score: T.nilable(Float),
              customer_name: T.nilable(String),
              matched_name: T.nilable(String),
              names_on_account: T.nilable(T::Array[String]),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
