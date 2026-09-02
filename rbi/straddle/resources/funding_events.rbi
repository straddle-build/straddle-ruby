# typed: strong

module Straddle
  module Resources
    # Funding events group charge and payout activity into transfers between Straddle
    # and your linked bank account.
    class FundingEvents
      # Returns a funding event by its unique identifier, including its current status,
      # status history, and linked bank account details when available.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::FundingEventResponse)
      end
      def retrieve(
        # Unique identifier for the funding event.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of funding events that match the specified filters.
      sig do
        params(
          created_from: T.nilable(Date),
          created_to: T.nilable(Date),
          direction: Straddle::TransferDirection::OrSymbol,
          event_type: Straddle::FundingEventType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          search_text: T.nilable(String),
          sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          status: T.nilable(T::Array[Straddle::PaymentStatus::OrSymbol]),
          status_reason:
            T.nilable(T::Array[Straddle::PaymentStatusReason::OrSymbol]),
          status_source:
            T.nilable(T::Array[Straddle::PaymentStatusSource::OrSymbol]),
          trace_id: T.nilable(String),
          trace_number: T.nilable(String),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::FundingEventSummaryList)
      end
      def list(
        # Query param: Filter to funding events created on or after this date.
        created_from: nil,
        # Query param: Filter to funding events created on or before this date.
        created_to: nil,
        # Query param: Filter by transfer direction relative to the linked bank account.
        direction: nil,
        # Query param: Filter by funding event type.
        event_type: nil,
        # Query param: Results page number. Starts at page 1.
        page_number: nil,
        # Query param: Results page size. Max value: 1000.
        page_size: nil,
        # Query param: Free-text search across funding event fields.
        search_text: nil,
        # Query param: Field used to sort the results.
        sort_by: nil,
        # Query param: Order in which to sort the results.
        sort_order: nil,
        # Query param: Filter by funding event status.
        status: nil,
        # Query param: Filter by the reason for the most recent status change.
        status_reason: nil,
        # Query param: Filter by the source of the most recent status change.
        status_source: nil,
        # Query param: Filter by a network-level trace identifier assigned during
        # processing.
        trace_id: nil,
        # Query param: Filter by a network trace number assigned during processing.
        trace_number: nil,
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

      # Returns a paginated list of payments included in the funding event.
      sig do
        params(
          id: String,
          default_page_size: Integer,
          default_sort:
            Straddle::FundingEventListPaymentsParams::DefaultSort::OrSymbol,
          default_sort_order: Straddle::SortOrder::OrSymbol,
          include_metadata: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::FundingEventListPaymentsParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::FundingEventPaymentList)
      end
      def list_payments(
        # Path param: Unique identifier for the funding event.
        id,
        # Query param: Default number of results returned per page.
        default_page_size: nil,
        # Query param: Default field used to sort the results.
        default_sort: nil,
        # Query param: Default order in which to sort the results.
        default_sort_order: nil,
        # Query param: When `true`, includes each payment's metadata. Defaults to `false`.
        include_metadata: nil,
        # Query param: Results page number. Starts at 1. Defaults to 1.
        page_number: nil,
        # Query param: Number of results per page. Maximum 1,000. Defaults to 100.
        page_size: nil,
        # Query param: Field used to sort the results.
        sort_by: nil,
        # Query param: Order in which to sort the results.
        sort_order: nil,
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

      # Creates a funding event for unfunded charge or payout activity in the sandbox
      # and returns its ID. This endpoint is unavailable in production.
      sig do
        params(
          funding_event_job_type:
            Straddle::FundingEventSimulateParams::FundingEventJobType::OrSymbol,
          sandbox_outcome: Straddle::SimulatedPaymentOutcome::OrSymbol,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::FundingEventSimulation)
      end
      def simulate(
        # Body param: Required. Selects charge or payout activity for the simulated
        # funding event.
        funding_event_job_type:,
        # Body param: Optional. Sets the processing outcome for the simulated funding
        # event. Defaults to `standard`.
        sandbox_outcome: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
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
