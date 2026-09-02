# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#onboard
    class AccountOnboardParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute terms_of_service
      #
      #   @return [Straddle::Models::TermsOfService]
      required :terms_of_service, -> { Straddle::TermsOfService }

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

      # @!method initialize(account_id:, terms_of_service:, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param terms_of_service [Straddle::Models::TermsOfService]
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
