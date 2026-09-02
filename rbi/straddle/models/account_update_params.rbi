# typed: strong

module Straddle
  module Models
    class AccountUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::AccountUpdateParams, Straddle::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::AccountBusinessProfile) }
      attr_reader :business_profile

      sig do
        params(business_profile: Straddle::AccountBusinessProfile::OrHash).void
      end
      attr_writer :business_profile

      # Your unique ID for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
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

      sig do
        params(
          account_id: String,
          business_profile: Straddle::AccountBusinessProfile::OrHash,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        business_profile:,
        # Your unique ID for the account.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            business_profile: Straddle::AccountBusinessProfile,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
