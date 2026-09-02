# typed: strong

module Straddle
  module Models
    class PaykeyBankDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyBankDetails, Straddle::Internal::AnyHash)
        end

      # Masked bank account number.
      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(Straddle::AccountType::TaggedSymbol) }
      attr_accessor :account_type

      # Bank routing number.
      sig { returns(String) }
      attr_accessor :routing_number

      sig do
        params(
          account_number: String,
          account_type: Straddle::AccountType::OrSymbol,
          routing_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Masked bank account number.
        account_number:,
        account_type:,
        # Bank routing number.
        routing_number:
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            account_type: Straddle::AccountType::TaggedSymbol,
            routing_number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
