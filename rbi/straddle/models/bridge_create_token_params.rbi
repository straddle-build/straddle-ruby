# typed: strong

module Straddle
  module Models
    class BridgeCreateTokenParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::BridgeCreateTokenParams, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the customer associated with the Bridge session.
      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Straddle::PaykeyConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::PaykeyConfiguration::OrHash).void }
      attr_writer :config

      # Unique identifier for the paykey in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

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
          customer_id: String,
          config: Straddle::PaykeyConfiguration::OrHash,
          external_id: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the customer associated with the Bridge session.
        customer_id:,
        config: nil,
        # Unique identifier for the paykey in your system.
        external_id: nil,
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
            customer_id: String,
            config: Straddle::PaykeyConfiguration,
            external_id: T.nilable(String),
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
