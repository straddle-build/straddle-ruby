# frozen_string_literal: true

module Straddle
  module Resources
    # A paykey links a verified customer to a bank account without exposing bank
    # account details. Use a paykey to create charges and payouts.
    class Paykeys
      # A paykey links a verified customer to a bank account without exposing bank
      # account details. Use a paykey to create charges and payouts.
      # @return [Straddle::Resources::Paykeys::Review]
      attr_reader :review

      # Returns a paykey by `id`, including the masked paykey value and bank account
      # details.
      #
      # @overload retrieve(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::PaykeyResponse]
      #
      # @see Straddle::Models::PaykeyRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Straddle::PaykeyRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PaykeyResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyListParams} for more details.
      #
      # Returns a paginated list of paykeys for the account. Optional query parameters
      # filter, search, and sort the results.
      #
      # @overload list(created_from: nil, created_to: nil, customer_id: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, source: nil, status: nil, unblock_eligible: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param created_from [Time] Query param: Start date for filtering by creation date.
      #
      # @param created_to [Time] Query param: End date for filtering by creation date.
      #
      # @param customer_id [String] Query param: Filter paykeys by related customer ID.
      #
      # @param page_number [Integer] Query param: Page number for paginated results. Starts at 1.
      #
      # @param page_size [Integer] Query param: Number of results per page. Maximum: 1000.
      #
      # @param search_text [String] Query param: General search term to filter paykeys.
      #
      # @param sort_by [Symbol, Straddle::Models::PaykeyListParams::SortBy] Query param: Field used to sort the results.
      #
      # @param sort_order [Symbol, Straddle::Models::SortOrder] Query param: Order in which to sort the results.
      #
      # @param source [Array<Symbol, Straddle::Models::PaykeySource>] Query param: Filter paykeys by their source.
      #
      # @param status [Array<Symbol, Straddle::Models::PaykeyStatus>] Query param: Filter paykeys by their current status.
      #
      # @param unblock_eligible [Boolean] Query param: Filters paykeys by unblock eligibility. `true` returns blocked payk
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaykeySummaryList]
      #
      # @see Straddle::Models::PaykeyListParams
      def list(params = {})
        query_params = %i[
          created_from
          created_to
          customer_id
          page_number
          page_size
          search_text
          sort_by
          sort_order
          source
          status
          unblock_eligible
        ]
        parsed, options = Straddle::PaykeyListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/paykeys",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PaykeySummaryList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyCancelParams} for more details.
      #
      # Cancels a paykey so it cannot be used for new payments.
      #
      # @overload cancel(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the paykey.
      #
      # @param reason [String, nil] Body param: Reason for canceling the paykey.
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
      # @see Straddle::Models::PaykeyCancelParams
      def cancel(id, params = {})
        parsed, options = Straddle::PaykeyCancelParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/paykeys/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PaykeyResponse,
          options: options
        )
      end

      # Returns a paykey by `id`, including the full paykey value and unmasked bank
      # account details. Straddle must enable this endpoint for your account. Use this
      # endpoint only when unmasked data is necessary.
      #
      # @overload list_unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::UnmaskedPaykeyResponse]
      #
      # @see Straddle::Models::PaykeyListUnmaskedParams
      def list_unmasked(id, params = {})
        parsed, options = Straddle::PaykeyListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s/unmasked", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::UnmaskedPaykeyResponse,
          options: options
        )
      end

      # Starts an asynchronous balance refresh for a paykey. The response returns the
      # paykey before the refresh finishes.
      #
      # @overload refresh_balance(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the paykey.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaykeyResponse]
      #
      # @see Straddle::Models::PaykeyRefreshBalanceParams
      def refresh_balance(id, params = {})
        parsed, options = Straddle::PaykeyRefreshBalanceParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/paykeys/%1$s/refresh_balance", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PaykeyResponse,
          options: options
        )
      end

      # Starts a new verification review for a paykey. The review runs asynchronously.
      # Webhooks and the paykey review endpoint return updated results.
      #
      # @overload refresh_review(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the paykey.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaykeyResponse]
      #
      # @see Straddle::Models::PaykeyRefreshReviewParams
      def refresh_review(id, params = {})
        parsed, options = Straddle::PaykeyRefreshReviewParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/paykeys/%1$s/refresh_review", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PaykeyResponse,
          options: options
        )
      end

      # Returns a paykey by `id`, including the full paykey value and masked bank
      # account details.
      #
      # @overload reveal(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
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
      # @return [Straddle::Models::RevealedPaykeyResponse]
      #
      # @see Straddle::Models::PaykeyRevealParams
      def reveal(id, params = {})
        parsed, options = Straddle::PaykeyRevealParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/paykeys/%1$s/reveal", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::RevealedPaykeyResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaykeyUnblockParams} for more details.
      #
      # Unblocks a paykey that was blocked by an `R29` return. The paykey must not have
      # been unblocked before.
      #
      # @overload unblock(id, message: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the paykey.
      #
      # @param message [String, nil] Body param: Optional message describing the reason for unblocking.
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
      # @see Straddle::Models::PaykeyUnblockParams
      def unblock(id, params = {})
        parsed, options = Straddle::PaykeyUnblockParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :patch,
          path: ["v1/paykeys/%1$s/unblock", id],
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
        @review = Straddle::Resources::Paykeys::Review.new(client: client)
      end
    end
  end
end
