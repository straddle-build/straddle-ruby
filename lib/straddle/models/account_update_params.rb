# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#update
    class AccountUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute business_profile
      #
      #   @return [Straddle::Models::AccountBusinessProfile]
      required :business_profile, -> { Straddle::AccountBusinessProfile }

      # @!attribute external_id
      #   Your unique ID for the account.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

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

      # @!method initialize(account_id:, business_profile:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param business_profile [Straddle::Models::AccountBusinessProfile]
      #
      #   @param external_id [String, nil] Your unique ID for the account.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
