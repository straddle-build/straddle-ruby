# typed: strong

module Straddle
  module Models
    class UnmaskedCustomer < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::UnmaskedCustomer, Straddle::Internal::AnyHash)
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

      # Customer postal address. When provided, the object must include all required
      # fields.
      sig { returns(T.nilable(Straddle::CustomerAddress)) }
      attr_reader :address

      sig { params(address: T.nilable(Straddle::CustomerAddress::OrHash)).void }
      attr_writer :address

      sig { returns(T.nilable(Straddle::UnmaskedComplianceProfile::Variants)) }
      attr_accessor :compliance_profile

      sig { returns(T.nilable(Straddle::CustomerConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::CustomerConfiguration::OrHash).void }
      attr_writer :config

      sig { returns(T.nilable(Straddle::CustomerDevice)) }
      attr_reader :device

      sig { params(device: Straddle::CustomerDevice::OrHash).void }
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
                Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          config: Straddle::CustomerConfiguration::OrHash,
          device: Straddle::CustomerDevice::OrHash,
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
              T.nilable(Straddle::UnmaskedComplianceProfile::Variants),
            config: Straddle::CustomerConfiguration,
            device: Straddle::CustomerDevice,
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
