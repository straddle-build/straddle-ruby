# typed: strong

module Straddle
  module Models
    class PayoutResubmitParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PayoutResubmitParams, Straddle::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Description for the resubmitted payout. Defaults to the original description if
      # omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Your unique identifier for the resubmitted payout. Defaults to a new value if
      # omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Date when Straddle submits the resubmitted payout for processing. Defaults to
      # today if omitted.
      sig { returns(T.nilable(Date)) }
      attr_accessor :payment_date

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
          description: T.nilable(String),
          external_id: T.nilable(String),
          payment_date: T.nilable(Date),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Description for the resubmitted payout. Defaults to the original description if
        # omitted.
        description: nil,
        # Your unique identifier for the resubmitted payout. Defaults to a new value if
        # omitted.
        external_id: nil,
        # Date when Straddle submits the resubmitted payout for processing. Defaults to
        # today if omitted.
        payment_date: nil,
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
            description: T.nilable(String),
            external_id: T.nilable(String),
            payment_date: T.nilable(Date),
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
