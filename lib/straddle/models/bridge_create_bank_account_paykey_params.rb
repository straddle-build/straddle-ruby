# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Bridge#create_bank_account_paykey
    class BridgeCreateBankAccountPaykeyParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_number
      #   Bank account number.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute account_type
      #
      #   @return [Symbol, Straddle::Models::AccountType]
      required :account_type, enum: -> { Straddle::AccountType }

      # @!attribute customer_id
      #   Unique identifier for the customer associated with the paykey.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute routing_number
      #   Bank routing number.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute config
      #
      #   @return [Straddle::Models::PaykeyConfiguration, nil]
      optional :config, -> { Straddle::PaykeyConfiguration }

      # @!attribute external_id
      #   Unique identifier for the paykey in your system.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs associated with the paykey.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

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

      # @!method initialize(account_number:, account_type:, customer_id:, routing_number:, config: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param account_number [String] Bank account number.
      #
      #   @param account_type [Symbol, Straddle::Models::AccountType]
      #
      #   @param customer_id [String] Unique identifier for the customer associated with the paykey.
      #
      #   @param routing_number [String] Bank routing number.
      #
      #   @param config [Straddle::Models::PaykeyConfiguration]
      #
      #   @param external_id [String, nil] Unique identifier for the paykey in your system.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs associated with the paykey.
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
