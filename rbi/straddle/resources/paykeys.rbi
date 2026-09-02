# typed: strong

module Straddle
  module Resources
    # A paykey links a verified customer to a bank account without exposing bank
    # account details. Use a paykey to create charges and payouts.
    class Paykeys
      # A paykey links a verified customer to a bank account without exposing bank
      # account details. Use a paykey to create charges and payouts.
      sig { returns(Straddle::Resources::Paykeys::Review) }
      attr_reader :review

      # Returns a paykey by `id`, including the masked paykey value and bank account
      # details.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyResponse)
      end
      def retrieve(
        # Unique identifier for the paykey.
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

      # Returns a paginated list of paykeys for the account. Optional query parameters
      # filter, search, and sort the results.
      sig do
        params(
          created_from: Time,
          created_to: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          source: T::Array[Straddle::PaykeySource::OrSymbol],
          status: T::Array[Straddle::PaykeyStatus::OrSymbol],
          unblock_eligible: T::Boolean,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeySummaryList)
      end
      def list(
        # Query param: Start date for filtering by creation date.
        created_from: nil,
        # Query param: End date for filtering by creation date.
        created_to: nil,
        # Query param: Filter paykeys by related customer ID.
        customer_id: nil,
        # Query param: Page number for paginated results. Starts at 1.
        page_number: nil,
        # Query param: Number of results per page. Maximum: 1000.
        page_size: nil,
        # Query param: General search term to filter paykeys.
        search_text: nil,
        # Query param: Field used to sort the results.
        sort_by: nil,
        # Query param: Order in which to sort the results.
        sort_order: nil,
        # Query param: Filter paykeys by their source.
        source: nil,
        # Query param: Filter paykeys by their current status.
        status: nil,
        # Query param: Filters paykeys by unblock eligibility. `true` returns blocked
        # paykeys that are eligible because of an `R29` return and have not been unblocked
        # before. `false` returns blocked paykeys that are not eligible.
        unblock_eligible: nil,
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

      # Cancels a paykey so it cannot be used for new payments.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyResponse)
      end
      def cancel(
        # Path param: Unique identifier for the paykey.
        id,
        # Body param: Reason for canceling the paykey.
        reason: nil,
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

      # Returns a paykey by `id`, including the full paykey value and unmasked bank
      # account details. Straddle must enable this endpoint for your account. Use this
      # endpoint only when unmasked data is necessary.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedPaykeyResponse)
      end
      def list_unmasked(
        # Unique identifier for the paykey.
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

      # Starts an asynchronous balance refresh for a paykey. The response returns the
      # paykey before the refresh finishes.
      sig do
        params(
          id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyResponse)
      end
      def refresh_balance(
        # Unique identifier for the paykey.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Starts a new verification review for a paykey. The review runs asynchronously.
      # Webhooks and the paykey review endpoint return updated results.
      sig do
        params(
          id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyResponse)
      end
      def refresh_review(
        # Unique identifier for the paykey.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Returns a paykey by `id`, including the full paykey value and masked bank
      # account details.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::RevealedPaykeyResponse)
      end
      def reveal(
        # Unique identifier for the paykey.
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

      # Unblocks a paykey that was blocked by an `R29` return. The paykey must not have
      # been unblocked before.
      sig do
        params(
          id: String,
          message: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PaykeyResponse)
      end
      def unblock(
        # Path param: Unique identifier for the paykey.
        id,
        # Body param: Optional message describing the reason for unblocking.
        message: nil,
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
