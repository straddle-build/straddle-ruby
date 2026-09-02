# frozen_string_literal: true

module Straddle
  module Resources
    class Paykeys
      # A paykey links a verified customer to a bank account without exposing bank
      # account details. Use a paykey to create charges and payouts.
      class Review
        # Returns a paykey verification review, including the decision, score breakdowns,
        # and result codes.
        #
        # @overload list(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Unique identifier for the paykey.
        #
        # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
        #
        # @param request_id [String] Optional client-generated identifier for tracing one request.
        #
        # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Paykeys::PaykeyReviewResponse]
        #
        # @see Straddle::Models::Paykeys::ReviewListParams
        def list(id, params = {})
          parsed, options = Straddle::Paykeys::ReviewListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/paykeys/%1$s/review", id],
            headers:
              parsed.transform_keys(
                correlation_id: "correlation-id",
                request_id: "request-id",
                straddle_account_id: "straddle-account-id"
              ),
            model: Straddle::Paykeys::PaykeyReviewResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Paykeys::ReviewSetVerificationDecisionParams} for more
        # details.
        #
        # Updates the verification decision for a paykey. The paykey's current `status`
        # must be `review`.
        #
        # @overload set_verification_decision(id, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Path param: Unique identifier for the paykey.
        #
        # @param status [Symbol, Straddle::Models::Paykeys::ReviewSetVerificationDecisionParams::Status] Body param
        #
        # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
        #
        # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
        #
        # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
        #
        # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::PaykeyResponse]
        #
        # @see Straddle::Models::Paykeys::ReviewSetVerificationDecisionParams
        def set_verification_decision(id, params)
          parsed, options = Straddle::Paykeys::ReviewSetVerificationDecisionParams.dump_request(params)
          header_params = {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
          @client.request(
            method: :patch,
            path: ["v1/paykeys/%1$s/review", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::PaykeyResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Straddle::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
