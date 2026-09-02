# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#simulate_onboarding
    class AccountSimulateOnboardingParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute final_status
      #   Final account status to produce in the sandbox simulation.
      #
      #   @return [Symbol, Straddle::Models::AccountSimulateOnboardingParams::FinalStatus, nil]
      optional :final_status, enum: -> { Straddle::AccountSimulateOnboardingParams::FinalStatus }

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

      # @!method initialize(account_id:, final_status: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param final_status [Symbol, Straddle::Models::AccountSimulateOnboardingParams::FinalStatus] Final account status to produce in the sandbox simulation.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module FinalStatus
        extend Straddle::Internal::Type::Enum

        ONBOARDING = :onboarding
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
