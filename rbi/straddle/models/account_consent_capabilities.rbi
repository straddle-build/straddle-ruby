# typed: strong

module Straddle
  module Models
    class AccountConsentCapabilities < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountConsentCapabilities,
            Straddle::Internal::AnyHash
          )
        end

      # Internet payment authorization capability for the account.
      sig { returns(Straddle::AccountCapability) }
      attr_reader :internet

      sig { params(internet: Straddle::AccountCapability::OrHash).void }
      attr_writer :internet

      # Signed-agreement payment authorization capability for the account.
      sig { returns(Straddle::AccountCapability) }
      attr_reader :signed_agreement

      sig { params(signed_agreement: Straddle::AccountCapability::OrHash).void }
      attr_writer :signed_agreement

      sig do
        params(
          internet: Straddle::AccountCapability::OrHash,
          signed_agreement: Straddle::AccountCapability::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Internet payment authorization capability for the account.
        internet:,
        # Signed-agreement payment authorization capability for the account.
        signed_agreement:
      )
      end

      sig do
        override.returns(
          {
            internet: Straddle::AccountCapability,
            signed_agreement: Straddle::AccountCapability
          }
        )
      end
      def to_hash
      end
    end
  end
end
