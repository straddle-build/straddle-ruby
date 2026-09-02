# frozen_string_literal: true

module Straddle
  module Resources
    # Funding events group charge and payout activity into transfers between Straddle
    # and your linked bank account.
    class FundingEvents
      # Returns a funding event by its unique identifier, including its current status,
      # status history, and linked bank account details when available.
      #
      # @overload retrieve(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the funding event.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::FundingEventResponse]
      #
      # @see Straddle::Models::FundingEventRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Straddle::FundingEventRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/funding_events/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::FundingEventResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::FundingEventListParams} for more details.
      #
      # Returns a paginated list of funding events that match the specified filters.
      #
      # @overload list(created_from: nil, created_to: nil, direction: nil, event_type: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, status_reason: nil, status_source: nil, trace_id: nil, trace_number: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param created_from [Date, nil] Query param: Filter to funding events created on or after this date.
      #
      # @param created_to [Date, nil] Query param: Filter to funding events created on or before this date.
      #
      # @param direction [Symbol, Straddle::Models::TransferDirection] Query param: Filter by transfer direction relative to the linked bank account.
      #
      # @param event_type [Symbol, Straddle::Models::FundingEventType] Query param: Filter by funding event type.
      #
      # @param page_number [Integer] Query param: Results page number. Starts at page 1.
      #
      # @param page_size [Integer] Query param: Results page size. Max value: 1000.
      #
      # @param search_text [String, nil] Query param: Free-text search across funding event fields.
      #
      # @param sort_by [Symbol, Straddle::Models::FundingEventListParams::SortBy] Query param: Field used to sort the results.
      #
      # @param sort_order [Symbol, Straddle::Models::SortOrder] Query param: Order in which to sort the results.
      #
      # @param status [Array<Symbol, Straddle::Models::PaymentStatus>, nil] Query param: Filter by funding event status.
      #
      # @param status_reason [Array<Symbol, Straddle::Models::PaymentStatusReason>, nil] Query param: Filter by the reason for the most recent status change.
      #
      # @param status_source [Array<Symbol, Straddle::Models::PaymentStatusSource>, nil] Query param: Filter by the source of the most recent status change.
      #
      # @param trace_id [String, nil] Query param: Filter by a network-level trace identifier assigned during processi
      #
      # @param trace_number [String, nil] Query param: Filter by a network trace number assigned during processing.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::FundingEventSummaryList]
      #
      # @see Straddle::Models::FundingEventListParams
      def list(params = {})
        query_params = %i[
          created_from
          created_to
          direction
          event_type
          page_number
          page_size
          search_text
          sort_by
          sort_order
          status
          status_reason
          status_source
          trace_id
          trace_number
        ]
        parsed, options = Straddle::FundingEventListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/funding_events",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::FundingEventSummaryList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::FundingEventListPaymentsParams} for more details.
      #
      # Returns a paginated list of payments included in the funding event.
      #
      # @overload list_payments(id, default_page_size: nil, default_sort: nil, default_sort_order: nil, include_metadata: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the funding event.
      #
      # @param default_page_size [Integer] Query param: Default number of results returned per page.
      #
      # @param default_sort [Symbol, Straddle::Models::FundingEventListPaymentsParams::DefaultSort] Query param: Default field used to sort the results.
      #
      # @param default_sort_order [Symbol, Straddle::Models::SortOrder] Query param: Default order in which to sort the results.
      #
      # @param include_metadata [Boolean] Query param: When `true`, includes each payment's metadata. Defaults to `false`.
      #
      # @param page_number [Integer] Query param: Results page number. Starts at 1. Defaults to 1.
      #
      # @param page_size [Integer] Query param: Number of results per page. Maximum 1,000. Defaults to 100.
      #
      # @param sort_by [Symbol, Straddle::Models::FundingEventListPaymentsParams::SortBy] Query param: Field used to sort the results.
      #
      # @param sort_order [Symbol, Straddle::Models::SortOrder] Query param: Order in which to sort the results.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::FundingEventPaymentList]
      #
      # @see Straddle::Models::FundingEventListPaymentsParams
      def list_payments(id, params = {})
        query_params = %i[
          default_page_size
          default_sort
          default_sort_order
          include_metadata
          page_number
          page_size
          sort_by
          sort_order
        ]
        parsed, options = Straddle::FundingEventListPaymentsParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["v1/funding_event_payments/%1$s", id],
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::FundingEventPaymentList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::FundingEventSimulateParams} for more details.
      #
      # Creates a funding event for unfunded charge or payout activity in the sandbox
      # and returns its ID. This endpoint is unavailable in production.
      #
      # @overload simulate(funding_event_job_type:, sandbox_outcome: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param funding_event_job_type [Symbol, Straddle::Models::FundingEventSimulateParams::FundingEventJobType] Body param: Required. Selects charge or payout activity for the simulated fundin
      #
      # @param sandbox_outcome [Symbol, Straddle::Models::SimulatedPaymentOutcome] Body param: Optional. Sets the processing outcome for the simulated funding even
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
      # @return [Straddle::Models::FundingEventSimulation]
      #
      # @see Straddle::Models::FundingEventSimulateParams
      def simulate(params)
        parsed, options = Straddle::FundingEventSimulateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: "v1/funding_events/simulate",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::FundingEventSimulation,
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
