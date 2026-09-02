# typed: strong

module Straddle
  module Models
    class AccountSimulateOnboardingParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountSimulateOnboardingParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Final account status to produce in the sandbox simulation.
      sig do
        returns(
          T.nilable(
            Straddle::AccountSimulateOnboardingParams::FinalStatus::OrSymbol
          )
        )
      end
      attr_reader :final_status

      sig do
        params(
          final_status:
            Straddle::AccountSimulateOnboardingParams::FinalStatus::OrSymbol
        ).void
      end
      attr_writer :final_status

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
          final_status:
            Straddle::AccountSimulateOnboardingParams::FinalStatus::OrSymbol,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # Final account status to produce in the sandbox simulation.
        final_status: nil,
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
            final_status:
              Straddle::AccountSimulateOnboardingParams::FinalStatus::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module FinalStatus
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Straddle::AccountSimulateOnboardingParams::FinalStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONBOARDING =
          T.let(
            :onboarding,
            Straddle::AccountSimulateOnboardingParams::FinalStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Straddle::AccountSimulateOnboardingParams::FinalStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountSimulateOnboardingParams::FinalStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
