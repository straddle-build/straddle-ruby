# frozen_string_literal: true

module Straddle
  module Resources
    # Payments provide a combined view of charges and payouts.
    class Payments
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PaymentListParams} for more details.
      #
      # Returns a paged list of charges and payouts that match the filters.
      #
      # @overload list(customer_id: nil, default_page_size: nil, default_sort: nil, default_sort_order: nil, external_id: nil, funding_id: nil, has_refund: nil, has_resubmit: nil, include_metadata: nil, is_refund: nil, is_resubmit: nil, max_amount: nil, max_created_at: nil, max_effective_at: nil, max_payment_date: nil, max_updated_at: nil, min_amount: nil, min_created_at: nil, min_effective_at: nil, min_payment_date: nil, min_updated_at: nil, page_number: nil, page_size: nil, paykey: nil, paykey_id: nil, payment_id: nil, payment_status: nil, payment_type: nil, search_text: nil, sort_by: nil, sort_order: nil, status_reason: nil, status_source: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param customer_id [String] Query param: Filter by the unique identifier of the customer.
      #
      # @param default_page_size [Integer] Query param: Default number of results returned per page.
      #
      # @param default_sort [Symbol, Straddle::Models::PaymentListParams::DefaultSort] Query param: Default field used to sort the results.
      #
      # @param default_sort_order [Symbol, Straddle::Models::SortOrder] Query param: Default order in which to sort the results.
      #
      # @param external_id [String] Query param: Filter by your external identifier for the payment.
      #
      # @param funding_id [String] Query param: Filter by the unique identifier of a funding event.
      #
      # @param has_refund [Boolean] Query param: Filter charges by whether an associated payout has refunded them.
      #
      # @param has_resubmit [Boolean] Query param: Filter payments by whether they have been resubmitted.
      #
      # @param include_metadata [Boolean] Query param: Whether to include metadata in each returned payment. Defaults to f
      #
      # @param is_refund [Boolean] Query param: Filter payouts by whether they refund an original charge.
      #
      # @param is_resubmit [Boolean] Query param: Filter payments by whether they resubmit an original payment.
      #
      # @param max_amount [Integer] Query param: Filter to payments with an amount in cents less than or equal to th
      #
      # @param max_created_at [Time] Query param: Filter to payments created at or before this timestamp.
      #
      # @param max_effective_at [Time] Query param: Filter to payments effective at or before this timestamp.
      #
      # @param max_payment_date [Date] Query param: Filter to payments with a payment date on or before this date.
      #
      # @param max_updated_at [Time] Query param: Filter to payments last updated on or before this timestamp.
      #
      # @param min_amount [Integer] Query param: Filter to payments with an amount in cents greater than or equal to
      #
      # @param min_created_at [Time] Query param: Filter to payments created at or after this timestamp.
      #
      # @param min_effective_at [Time] Query param: Filter to payments effective at or after this timestamp.
      #
      # @param min_payment_date [Date] Query param: Filter to payments with a payment date on or after this date.
      #
      # @param min_updated_at [Time] Query param: Filter to payments last updated on or after this timestamp.
      #
      # @param page_number [Integer] Query param: Page number to return.
      #
      # @param page_size [Integer] Query param: Number of results to return per page.
      #
      # @param paykey [String] Query param: Filter by the paykey token.
      #
      # @param paykey_id [String] Query param: Filter by the unique identifier of the paykey.
      #
      # @param payment_id [String] Query param: Filter by the payment's unique identifier.
      #
      # @param payment_status [Array<Symbol, Straddle::Models::PaymentStatus>] Query param: Filter by payment status.
      #
      # @param payment_type [Array<Symbol, Straddle::Models::PaymentType>] Query param: Filter by payment type.
      #
      # @param search_text [String] Query param: Free-text search across payment fields.
      #
      # @param sort_by [Symbol, Straddle::Models::PaymentListParams::SortBy] Query param: Field used to sort the results.
      #
      # @param sort_order [Symbol, Straddle::Models::SortOrder] Query param: Order in which to sort the results.
      #
      # @param status_reason [Array<Symbol, Straddle::Models::PaymentStatusReason>] Query param: Filter by the reason for the most recent payment status change.
      #
      # @param status_source [Array<Symbol, Straddle::Models::PaymentStatusSource>] Query param: Filter by the source of the most recent payment status change.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PaymentSummaryList]
      #
      # @see Straddle::Models::PaymentListParams
      def list(params = {})
        query_params = %i[
          customer_id
          default_page_size
          default_sort
          default_sort_order
          external_id
          funding_id
          has_refund
          has_resubmit
          include_metadata
          is_refund
          is_resubmit
          max_amount
          max_created_at
          max_effective_at
          max_payment_date
          max_updated_at
          min_amount
          min_created_at
          min_effective_at
          min_payment_date
          min_updated_at
          page_number
          page_size
          paykey
          paykey_id
          payment_id
          payment_status
          payment_type
          search_text
          sort_by
          sort_order
          status_reason
          status_source
        ]
        parsed, options = Straddle::PaymentListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/payments",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PaymentSummaryList,
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
