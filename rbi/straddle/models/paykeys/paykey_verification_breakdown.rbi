# typed: strong

module Straddle
  module Models
    PaykeyVerificationBreakdown = Paykeys::PaykeyVerificationBreakdown

    module Paykeys
      class PaykeyVerificationBreakdown < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::PaykeyVerificationBreakdown,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Straddle::Paykeys::AccountValidationDetails)) }
        attr_reader :account_validation

        sig do
          params(
            account_validation:
              Straddle::Paykeys::AccountValidationDetails::OrHash
          ).void
        end
        attr_writer :account_validation

        sig { returns(T.nilable(Straddle::Paykeys::AccountNameMatchDetails)) }
        attr_reader :name_match

        sig do
          params(
            name_match: Straddle::Paykeys::AccountNameMatchDetails::OrHash
          ).void
        end
        attr_writer :name_match

        sig do
          params(
            account_validation:
              Straddle::Paykeys::AccountValidationDetails::OrHash,
            name_match: Straddle::Paykeys::AccountNameMatchDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account_validation: nil, name_match: nil)
        end

        sig do
          override.returns(
            {
              account_validation: Straddle::Paykeys::AccountValidationDetails,
              name_match: Straddle::Paykeys::AccountNameMatchDetails
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
