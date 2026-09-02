# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Bridge#create_token
    class BridgeCreateTokenParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Unique identifier for the customer associated with the Bridge session.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute config
      #
      #   @return [Straddle::Models::PaykeyConfiguration, nil]
      optional :config, -> { Straddle::PaykeyConfiguration }

      # @!attribute external_id
      #   Unique identifier for the paykey in your system.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

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

      # @!method initialize(customer_id:, config: nil, external_id: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param customer_id [String] Unique identifier for the customer associated with the Bridge session.
      #
      #   @param config [Straddle::Models::PaykeyConfiguration]
      #
      #   @param external_id [String, nil] Unique identifier for the paykey in your system.
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
    end
  end
end
