# typed: strong

module Straddle
  module Models
    PaykeyReview = Paykeys::PaykeyReview

    module Paykeys
      class PaykeyReview < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Straddle::Paykeys::PaykeyReview, Straddle::Internal::AnyHash)
          end

        sig { returns(Straddle::Paykey) }
        attr_reader :paykey_details

        sig { params(paykey_details: Straddle::Paykey::OrHash).void }
        attr_writer :paykey_details

        sig { returns(T.nilable(Straddle::Paykeys::PaykeyVerificationDetails)) }
        attr_reader :verification_details

        sig do
          params(
            verification_details:
              Straddle::Paykeys::PaykeyVerificationDetails::OrHash
          ).void
        end
        attr_writer :verification_details

        sig do
          params(
            paykey_details: Straddle::Paykey::OrHash,
            verification_details:
              Straddle::Paykeys::PaykeyVerificationDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(paykey_details:, verification_details: nil)
        end

        sig do
          override.returns(
            {
              paykey_details: Straddle::Paykey,
              verification_details: Straddle::Paykeys::PaykeyVerificationDetails
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
