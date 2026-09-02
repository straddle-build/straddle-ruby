# typed: strong

module Straddle
  module Models
    class BridgeCreateBankAccountPaykeyParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::BridgeCreateBankAccountPaykeyParams,
            Straddle::Internal::AnyHash
          )
        end

      # Bank account number.
      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(Straddle::AccountType::OrSymbol) }
      attr_accessor :account_type

      # Unique identifier for the customer associated with the paykey.
      sig { returns(String) }
      attr_accessor :customer_id

      # Bank routing number.
      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(Straddle::PaykeyConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::PaykeyConfiguration::OrHash).void }
      attr_writer :config

      # Unique identifier for the paykey in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs associated with the paykey.
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
          account_number: String,
          account_type: Straddle::AccountType::OrSymbol,
          customer_id: String,
          routing_number: String,
          config: Straddle::PaykeyConfiguration::OrHash,
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
        # Bank account number.
        account_number:,
        account_type:,
        # Unique identifier for the customer associated with the paykey.
        customer_id:,
        # Bank routing number.
        routing_number:,
        config: nil,
        # Unique identifier for the paykey in your system.
        external_id: nil,
        # Up to 20 user-defined key-value pairs associated with the paykey.
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
            account_number: String,
            account_type: Straddle::AccountType::OrSymbol,
            customer_id: String,
            routing_number: String,
            config: Straddle::PaykeyConfiguration,
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
