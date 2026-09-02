# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      # @see Straddle::Resources::Customers::Review#set_verification_decision
      class ReviewSetVerificationDecisionParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #   The final status of the customer review.
        #
        #   @return [Symbol, Straddle::Models::Customers::ReviewSetVerificationDecisionParams::Status]
        required :status, enum: -> { Straddle::Customers::ReviewSetVerificationDecisionParams::Status }

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
        #   @param status [Symbol, Straddle::Models::Customers::ReviewSetVerificationDecisionParams::Status] The final status of the customer review.
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

        # The final status of the customer review.
        module Status
          extend Straddle::Internal::Type::Enum

          VERIFIED = :verified
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
