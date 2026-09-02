# typed: strong

module Straddle
  module Resources
    # Payments provide a combined view of charges and payouts.
    class Payments
      # Returns a paged list of charges and payouts that match the filters.
      sig do
        params(
          customer_id: String,
          default_page_size: Integer,
          default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol,
          default_sort_order: Straddle::SortOrder::OrSymbol,
          external_id: String,
          funding_id: String,
          has_refund: T::Boolean,
          has_resubmit: T::Boolean,
          include_metadata: T::Boolean,
          is_refund: T::Boolean,
          is_resubmit: T::Boolean,
          max_amount: Integer,
          max_created_at: Time,
          max_effective_at: Time,
          max_payment_date: Date,
          max_updated_at: Time,
          min_amount: Integer,
          min_created_at: Time,
          min_effective_at: Time,
          min_payment_date: Date,
          min_updated_at: Time,
          page_number: Integer,
          page_size: Integer,
          paykey: String,
          paykey_id: String,
          payment_id: String,
          payment_status: T::Array[Straddle::PaymentStatus::OrSymbol],
          payment_type: T::Array[Straddle::PaymentType::OrSymbol],
          search_text: String,
          sort_by: Straddle::PaymentListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          status_reason: T::Array[Straddle::PaymentStatusReason::OrSymbol],
          status_source: T::Array[Straddle::PaymentStatusSource::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaymentSummaryList)
      end
      def list(
        # Query param: Filter by the unique identifier of the customer.
        customer_id: nil,
        # Query param: Default number of results returned per page.
        default_page_size: nil,
        # Query param: Default field used to sort the results.
        default_sort: nil,
        # Query param: Default order in which to sort the results.
        default_sort_order: nil,
        # Query param: Filter by your external identifier for the payment.
        external_id: nil,
        # Query param: Filter by the unique identifier of a funding event.
        funding_id: nil,
        # Query param: Filter charges by whether an associated payout has refunded them.
        has_refund: nil,
        # Query param: Filter payments by whether they have been resubmitted.
        has_resubmit: nil,
        # Query param: Whether to include metadata in each returned payment. Defaults to
        # false.
        include_metadata: nil,
        # Query param: Filter payouts by whether they refund an original charge.
        is_refund: nil,
        # Query param: Filter payments by whether they resubmit an original payment.
        is_resubmit: nil,
        # Query param: Filter to payments with an amount in cents less than or equal to
        # this value.
        max_amount: nil,
        # Query param: Filter to payments created at or before this timestamp.
        max_created_at: nil,
        # Query param: Filter to payments effective at or before this timestamp.
        max_effective_at: nil,
        # Query param: Filter to payments with a payment date on or before this date.
        max_payment_date: nil,
        # Query param: Filter to payments last updated on or before this timestamp.
        max_updated_at: nil,
        # Query param: Filter to payments with an amount in cents greater than or equal to
        # this value.
        min_amount: nil,
        # Query param: Filter to payments created at or after this timestamp.
        min_created_at: nil,
        # Query param: Filter to payments effective at or after this timestamp.
        min_effective_at: nil,
        # Query param: Filter to payments with a payment date on or after this date.
        min_payment_date: nil,
        # Query param: Filter to payments last updated on or after this timestamp.
        min_updated_at: nil,
        # Query param: Page number to return.
        page_number: nil,
        # Query param: Number of results to return per page.
        page_size: nil,
        # Query param: Filter by the paykey token.
        paykey: nil,
        # Query param: Filter by the unique identifier of the paykey.
        paykey_id: nil,
        # Query param: Filter by the payment's unique identifier.
        payment_id: nil,
        # Query param: Filter by payment status.
        payment_status: nil,
        # Query param: Filter by payment type.
        payment_type: nil,
        # Query param: Free-text search across payment fields.
        search_text: nil,
        # Query param: Field used to sort the results.
        sort_by: nil,
        # Query param: Order in which to sort the results.
        sort_order: nil,
        # Query param: Filter by the reason for the most recent payment status change.
        status_reason: nil,
        # Query param: Filter by the source of the most recent payment status change.
        status_source: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        # Header param: For platform requests, the embedded account UUID that sets the
        # request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
