# typed: strong

module Straddle
  module Models
    class FundingEventSimulateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventSimulateParams,
            Straddle::Internal::AnyHash
          )
        end

      # Required. Selects charge or payout activity for the simulated funding event.
      sig do
        returns(
          Straddle::FundingEventSimulateParams::FundingEventJobType::OrSymbol
        )
      end
      attr_accessor :funding_event_job_type

      # Optional. Sets the processing outcome for the simulated funding event. Defaults
      # to `standard`.
      sig { returns(T.nilable(Straddle::SimulatedPaymentOutcome::OrSymbol)) }
      attr_reader :sandbox_outcome

      sig do
        params(
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol
        ).void
      end
      attr_writer :sandbox_outcome

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
          funding_event_job_type:
            Straddle::FundingEventSimulateParams::FundingEventJobType::OrSymbol,
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Required. Selects charge or payout activity for the simulated funding event.
        funding_event_job_type:,
        # Optional. Sets the processing outcome for the simulated funding event. Defaults
        # to `standard`.
        sandbox_outcome: nil,
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
            funding_event_job_type:
              Straddle::FundingEventSimulateParams::FundingEventJobType::OrSymbol,
            sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol,
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

      # Required. Selects charge or payout activity for the simulated funding event.
      module FundingEventJobType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Straddle::FundingEventSimulateParams::FundingEventJobType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(
            :charges,
            Straddle::FundingEventSimulateParams::FundingEventJobType::TaggedSymbol
          )
        PAYOUTS =
          T.let(
            :payouts,
            Straddle::FundingEventSimulateParams::FundingEventJobType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventSimulateParams::FundingEventJobType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
