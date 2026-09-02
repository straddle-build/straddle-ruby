# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      # @see Straddle::Resources::Paykeys::Review#set_verification_decision
      class ReviewSetVerificationDecisionParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::Paykeys::ReviewSetVerificationDecisionParams::Status]
        required :status, enum: -> { Straddle::Paykeys::ReviewSetVerificationDecisionParams::Status }

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

        # @!method initialize(id:, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #   @param id [String]
        #
        #   @param status [Symbol, Straddle::Models::Paykeys::ReviewSetVerificationDecisionParams::Status]
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

        module Status
          extend Straddle::Internal::Type::Enum

          ACTIVE = :active
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
