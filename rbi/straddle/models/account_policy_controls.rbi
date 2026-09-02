# typed: strong

module Straddle
  module Models
    class AccountPolicyControls < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountPolicyControls, Straddle::Internal::AnyHash)
        end

      # Whether customer identity verification can be skipped.
      sig { returns(T::Boolean) }
      attr_accessor :allow_customer_identity_skip

      # Whether the account can retrieve unmasked sensitive fields.
      sig { returns(T::Boolean) }
      attr_accessor :allow_data_unmask

      # Whether multiple customers can share one email address.
      sig { returns(T::Boolean) }
      attr_accessor :allow_duplicate_email

      # Whether paykey verification can be skipped.
      sig { returns(T::Boolean) }
      attr_accessor :allow_paykey_verification_skip

      sig do
        params(
          allow_customer_identity_skip: T::Boolean,
          allow_data_unmask: T::Boolean,
          allow_duplicate_email: T::Boolean,
          allow_paykey_verification_skip: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether customer identity verification can be skipped.
        allow_customer_identity_skip:,
        # Whether the account can retrieve unmasked sensitive fields.
        allow_data_unmask:,
        # Whether multiple customers can share one email address.
        allow_duplicate_email:,
        # Whether paykey verification can be skipped.
        allow_paykey_verification_skip:
      )
      end

      sig do
        override.returns(
          {
            allow_customer_identity_skip: T::Boolean,
            allow_data_unmask: T::Boolean,
            allow_duplicate_email: T::Boolean,
            allow_paykey_verification_skip: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
