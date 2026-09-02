# typed: strong

module Straddle
  module Models
    module Paykeys
      class AccountValidationDetails < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::AccountValidationDetails,
              Straddle::Internal::AnyHash
            )
          end

        # Result codes returned by the account-validation check.
        sig { returns(T::Array[String]) }
        attr_accessor :codes

        sig do
          returns(Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol)
        end
        attr_accessor :decision

        # Reason for the account-validation decision.
        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            codes: T::Array[String],
            decision: Straddle::Paykeys::PaykeyVerificationResult::OrSymbol,
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Result codes returned by the account-validation check.
          codes:,
          decision:,
          # Reason for the account-validation decision.
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T::Array[String],
              decision:
                Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol,
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
