# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::FundingEvents#simulate
    class FundingEventSimulateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute funding_event_job_type
      #   Required. Selects charge or payout activity for the simulated funding event.
      #
      #   @return [Symbol, Straddle::Models::FundingEventSimulateParams::FundingEventJobType]
      required :funding_event_job_type, enum: -> { Straddle::FundingEventSimulateParams::FundingEventJobType }

      # @!attribute sandbox_outcome
      #   Optional. Sets the processing outcome for the simulated funding event. Defaults
      #   to `standard`.
      #
      #   @return [Symbol, Straddle::Models::SimulatedPaymentOutcome, nil]
      optional :sandbox_outcome, enum: -> { Straddle::SimulatedPaymentOutcome }

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute idempotency_key
      #   Optional client-generated key for an idempotent request.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #   For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(funding_event_job_type:, sandbox_outcome: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEventSimulateParams} for more details.
      #
      #   @param funding_event_job_type [Symbol, Straddle::Models::FundingEventSimulateParams::FundingEventJobType] Required. Selects charge or payout activity for the simulated funding event.
      #
      #   @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaymentOutcome] Optional. Sets the processing outcome for the simulated funding event. Defaults
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      # Required. Selects charge or payout activity for the simulated funding event.
      module FundingEventJobType
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
