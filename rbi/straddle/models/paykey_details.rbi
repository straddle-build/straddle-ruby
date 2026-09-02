# typed: strong

module Straddle
  module Models
    class PaykeyDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyDetails, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the paykey.
      sig { returns(String) }
      attr_accessor :id

      # Unique identifier for the customer associated with the paykey.
      sig { returns(String) }
      attr_accessor :customer_id

      # Display label combining the bank name and masked account number.
      sig { returns(String) }
      attr_accessor :label

      # The most recent available balance in the smallest currency unit, if a balance
      # check was performed.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :balance

      sig do
        params(
          id: String,
          customer_id: String,
          label: String,
          balance: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the paykey.
        id:,
        # Unique identifier for the customer associated with the paykey.
        customer_id:,
        # Display label combining the bank name and masked account number.
        label:,
        # The most recent available balance in the smallest currency unit, if a balance
        # check was performed.
        balance: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            customer_id: String,
            label: String,
            balance: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
