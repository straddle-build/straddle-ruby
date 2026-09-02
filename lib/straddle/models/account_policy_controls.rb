# frozen_string_literal: true

module Straddle
  module Models
    class AccountPolicyControls < Straddle::Internal::Type::BaseModel
      # @!attribute allow_customer_identity_skip
      #   Whether customer identity verification can be skipped.
      #
      #   @return [Boolean]
      required :allow_customer_identity_skip, Straddle::Internal::Type::Boolean

      # @!attribute allow_data_unmask
      #   Whether the account can retrieve unmasked sensitive fields.
      #
      #   @return [Boolean]
      required :allow_data_unmask, Straddle::Internal::Type::Boolean

      # @!attribute allow_duplicate_email
      #   Whether multiple customers can share one email address.
      #
      #   @return [Boolean]
      required :allow_duplicate_email, Straddle::Internal::Type::Boolean

      # @!attribute allow_paykey_verification_skip
      #   Whether paykey verification can be skipped.
      #
      #   @return [Boolean]
      required :allow_paykey_verification_skip, Straddle::Internal::Type::Boolean

      # @!method initialize(allow_customer_identity_skip:, allow_data_unmask:, allow_duplicate_email:, allow_paykey_verification_skip:)
      #   @param allow_customer_identity_skip [Boolean] Whether customer identity verification can be skipped.
      #
      #   @param allow_data_unmask [Boolean] Whether the account can retrieve unmasked sensitive fields.
      #
      #   @param allow_duplicate_email [Boolean] Whether multiple customers can share one email address.
      #
      #   @param allow_paykey_verification_skip [Boolean] Whether paykey verification can be skipped.
    end
  end
end
