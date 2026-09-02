# typed: strong

module Straddle
  module Models
    class PayoutCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PayoutCreateParams, Straddle::Internal::AnyHash)
        end

      # Amount in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # Currency code. Only `USD` is supported.
      sig { returns(String) }
      attr_accessor :currency

      # Description shown on the customer's bank statement where supported.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Device used when the customer authorized the payout.
      sig { returns(Straddle::PaymentDevice) }
      attr_reader :device

      sig { params(device: Straddle::PaymentDevice::OrHash).void }
      attr_writer :device

      # Your unique identifier for the payout. Must be unique across payouts.
      sig { returns(String) }
      attr_accessor :external_id

      # The paykey token that identifies the customer's bank account.
      sig { returns(String) }
      attr_accessor :paykey

      # Date when Straddle submits the payout for processing.
      sig { returns(Date) }
      attr_accessor :payment_date

      sig { returns(T.nilable(Straddle::PayoutConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::PayoutConfiguration::OrHash).void }
      attr_writer :config

      # Up to 20 user-defined string key-value pairs.
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
          amount: Integer,
          currency: String,
          description: T.nilable(String),
          device: Straddle::PaymentDevice::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          config: Straddle::PayoutConfiguration::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in cents.
        amount:,
        # Currency code. Only `USD` is supported.
        currency:,
        # Description shown on the customer's bank statement where supported.
        description:,
        # Device used when the customer authorized the payout.
        device:,
        # Your unique identifier for the payout. Must be unique across payouts.
        external_id:,
        # The paykey token that identifies the customer's bank account.
        paykey:,
        # Date when Straddle submits the payout for processing.
        payment_date:,
        config: nil,
        # Up to 20 user-defined string key-value pairs.
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
            amount: Integer,
            currency: String,
            description: T.nilable(String),
            device: Straddle::PaymentDevice,
            external_id: String,
            paykey: String,
            payment_date: Date,
            config: Straddle::PayoutConfiguration,
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
