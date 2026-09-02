# frozen_string_literal: true

module Straddle
  module Resources
    class Customers
      # Customers are individuals or businesses that send or receive payments through
      # your integration.
      class Review
        # Returns the results of a customer's identity and fraud review. The response
        # includes decisions, risk and correlation scores, reason codes, watchlist
        # matches, and network alerts.
        #
        # @overload list(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Unique identifier for the customer.
        #
        # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
        #
        # @param request_id [String] Optional client-generated identifier for tracing one request.
        #
        # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
        #
        # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Straddle::Models::Customers::CustomerReviewResponse]
        #
        # @see Straddle::Models::Customers::ReviewListParams
        def list(id, params = {})
          parsed, options = Straddle::Customers::ReviewListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/customers/%1$s/review", id],
            headers:
              parsed.transform_keys(
                correlation_id: "correlation-id",
                request_id: "request-id",
                straddle_account_id: "straddle-account-id"
              ),
            model: Straddle::Customers::CustomerReviewResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Straddle::Models::Customers::ReviewSetVerificationDecisionParams} for more
        # details.
        #
        # Updates the verification decision for a customer. The customer's current
        # `status` must be `review`.
        #
        # @overload set_verification_decision(id, status:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
        #
        # @param id [String] Path param: Unique identifier for the customer.
        #
        # @param status [Symbol, Straddle::Models::Customers::ReviewSetVerificationDecisionParams::Status] Body param: The final status of the customer review.
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
        # @return [Straddle::Models::CustomerResponse]
        #
        # @see Straddle::Models::Customers::ReviewSetVerificationDecisionParams
        def set_verification_decision(id, params)
          parsed, options = Straddle::Customers::ReviewSetVerificationDecisionParams.dump_request(params)
          header_params = {
            correlation_id: "correlation-id",
            idempotency_key: "idempotency-key",
            request_id: "request-id",
            straddle_account_id: "straddle-account-id"
          }
          @client.request(
            method: :patch,
            path: ["v1/customers/%1$s/review", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Straddle::CustomerResponse,
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
