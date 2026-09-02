# typed: strong

module Straddle
  module Models
    class CustomerUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerUpdateParams, Straddle::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Straddle::CustomerDevice) }
      attr_reader :device

      sig { params(device: Straddle::CustomerDevice::OrHash).void }
      attr_writer :device

      # Customer email address.
      sig { returns(String) }
      attr_accessor :email

      # Full name for an individual customer or business name for a business customer.
      sig { returns(String) }
      attr_accessor :name

      # Customer phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :phone

      sig { returns(Straddle::CustomerStatus::OrSymbol) }
      attr_accessor :status

      # Customer postal address. When provided, the object must include all required
      # fields.
      sig { returns(T.nilable(Straddle::CustomerAddress)) }
      attr_reader :address

      sig { params(address: T.nilable(Straddle::CustomerAddress::OrHash)).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(
            T.any(
              Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile,
              Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile
            )
          )
        )
      end
      attr_accessor :compliance_profile

      # Unique identifier for the customer in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs associated with the customer.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated key for an idempotent request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # For platform requests, the embedded account UUID that sets the request scope.
      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          id: String,
          device: Straddle::CustomerDevice::OrHash,
          email: String,
          name: String,
          phone: String,
          status: Straddle::CustomerStatus::OrSymbol,
          address: T.nilable(Straddle::CustomerAddress::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        device:,
        # Customer email address.
        email:,
        # Full name for an individual customer or business name for a business customer.
        name:,
        # Customer phone number in E.164 format.
        phone:,
        status:,
        # Customer postal address. When provided, the object must include all required
        # fields.
        address: nil,
        compliance_profile: nil,
        # Unique identifier for the customer in your system.
        external_id: nil,
        # Up to 20 user-defined key-value pairs associated with the customer.
        metadata: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            device: Straddle::CustomerDevice,
            email: String,
            name: String,
            phone: String,
            status: Straddle::CustomerStatus::OrSymbol,
            address: T.nilable(Straddle::CustomerAddress),
            compliance_profile:
              T.nilable(
                T.any(
                  Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile,
                  Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile
                )
              ),
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
