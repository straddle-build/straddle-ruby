# typed: strong

module Straddle
  module Models
    class CustomerSummary < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerSummary, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the customer.
      sig { returns(String) }
      attr_accessor :id

      # Timestamp of when the customer record was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The customer's email address.
      sig { returns(String) }
      attr_accessor :email

      # Full name for an individual customer or business name for a business customer.
      sig { returns(String) }
      attr_accessor :name

      # The customer's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :phone

      sig { returns(Straddle::CustomerStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Straddle::CustomerType::TaggedSymbol) }
      attr_accessor :type

      # Timestamp of the most recent update to the customer record.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Unique identifier for the customer in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      sig do
        params(
          id: String,
          created_at: Time,
          email: String,
          name: String,
          phone: String,
          status: Straddle::CustomerStatus::OrSymbol,
          type: Straddle::CustomerType::OrSymbol,
          updated_at: Time,
          external_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the customer.
        id:,
        # Timestamp of when the customer record was created.
        created_at:,
        # The customer's email address.
        email:,
        # Full name for an individual customer or business name for a business customer.
        name:,
        # The customer's phone number in E.164 format.
        phone:,
        status:,
        type:,
        # Timestamp of the most recent update to the customer record.
        updated_at:,
        # Unique identifier for the customer in your system.
        external_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            email: String,
            name: String,
            phone: String,
            status: Straddle::CustomerStatus::TaggedSymbol,
            type: Straddle::CustomerType::TaggedSymbol,
            updated_at: Time,
            external_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
