# typed: strong

module Straddle
  module Models
    class UnmaskedLinkedBankAccountDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::UnmaskedLinkedBankAccountDetails,
            Straddle::Internal::AnyHash
          )
        end

      # Name of the account holder as it appears on the bank account.
      sig { returns(String) }
      attr_accessor :account_holder

      # Bank account number.
      sig { returns(String) }
      attr_accessor :account_number

      # Name of the financial institution.
      sig { returns(String) }
      attr_accessor :institution_name

      # Nine-digit ABA routing number for the bank account.
      sig { returns(String) }
      attr_accessor :routing_number

      sig do
        params(
          account_holder: String,
          account_number: String,
          institution_name: String,
          routing_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the account holder as it appears on the bank account.
        account_holder:,
        # Bank account number.
        account_number:,
        # Name of the financial institution.
        institution_name:,
        # Nine-digit ABA routing number for the bank account.
        routing_number:
      )
      end

      sig do
        override.returns(
          {
            account_holder: String,
            account_number: String,
            institution_name: String,
            routing_number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
