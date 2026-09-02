# typed: strong

module Straddle
  module Models
    class Customer < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Straddle::Customer, Straddle::Internal::AnyHash) }

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

      # Customer postal address. When provided, the object must include all required
      # fields.
      sig { returns(T.nilable(Straddle::CustomerAddress)) }
      attr_reader :address

      sig { params(address: T.nilable(Straddle::CustomerAddress::OrHash)).void }
      attr_writer :address

      sig { returns(T.nilable(Straddle::ComplianceProfile::Variants)) }
      attr_accessor :compliance_profile

      sig { returns(T.nilable(Straddle::CustomerConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::CustomerConfiguration::OrHash).void }
      attr_writer :config

      sig { returns(T.nilable(Straddle::MaskedCustomerDevice)) }
      attr_reader :device

      sig { params(device: Straddle::MaskedCustomerDevice::OrHash).void }
      attr_writer :device

      # Unique identifier for the customer in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs associated with the customer.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

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
          address: T.nilable(Straddle::CustomerAddress::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::ComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::ComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          config: Straddle::CustomerConfiguration::OrHash,
          device: Straddle::MaskedCustomerDevice::OrHash,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String])
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
        # Customer postal address. When provided, the object must include all required
        # fields.
        address: nil,
        compliance_profile: nil,
        config: nil,
        device: nil,
        # Unique identifier for the customer in your system.
        external_id: nil,
        # Up to 20 user-defined key-value pairs associated with the customer.
        metadata: nil
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
            address: T.nilable(Straddle::CustomerAddress),
            compliance_profile:
              T.nilable(Straddle::ComplianceProfile::Variants),
            config: Straddle::CustomerConfiguration,
            device: Straddle::MaskedCustomerDevice,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String])
          }
        )
      end
      def to_hash
      end
    end
  end
end
