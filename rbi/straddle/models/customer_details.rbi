# typed: strong

module Straddle
  module Models
    class CustomerDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerDetails, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the customer.
      sig { returns(String) }
      attr_accessor :id

      # Whether the customer is an individual or a business.
      sig { returns(Straddle::CustomerType::TaggedSymbol) }
      attr_accessor :customer_type

      # Customer's email address.
      sig { returns(String) }
      attr_accessor :email

      # Customer's full name or business name.
      sig { returns(String) }
      attr_accessor :name

      # Customer's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :phone

      # Information about the customer associated with the charge or payout.
      sig do
        params(
          id: String,
          customer_type: Straddle::CustomerType::OrSymbol,
          email: String,
          name: String,
          phone: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the customer.
        id:,
        # Whether the customer is an individual or a business.
        customer_type:,
        # Customer's email address.
        email:,
        # Customer's full name or business name.
        name:,
        # Customer's phone number in E.164 format.
        phone:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            customer_type: Straddle::CustomerType::TaggedSymbol,
            email: String,
            name: String,
            phone: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
