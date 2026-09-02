# typed: strong

module Straddle
  module Resources
    # Payouts send money to a customer's bank account through a paykey.
    class Payouts
      # Creates a payout to a customer's bank account. Straddle submits the payout for
      # processing on `payment_date` unless the payout is on hold.
      sig do
        params(
          amount: Integer,
          currency: String,
          description: T.nilable(String),
          device: Straddle::PaymentDevice::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          config: Straddle::PayoutConfiguration::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def create(
        # Body param: Amount in cents.
        amount:,
        # Body param: Currency code. Only `USD` is supported.
        currency:,
        # Body param: Description shown on the customer's bank statement where supported.
        description:,
        # Body param: Device used when the customer authorized the payout.
        device:,
        # Body param: Your unique identifier for the payout. Must be unique across
        # payouts.
        external_id:,
        # Body param: The paykey token that identifies the customer's bank account.
        paykey:,
        # Body param: Date when Straddle submits the payout for processing.
        payment_date:,
        # Body param
        config: nil,
        # Body param: Up to 20 user-defined string key-value pairs.
        metadata: nil,
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

      # Returns a payout by its unique identifier.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def retrieve(
        # Unique identifier for the payout.
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

      # Updates the description, amount, `payment_date`, or metadata. The payout must
      # have a status of `created` or `on_hold`.
      sig do
        params(
          id: String,
          amount: Integer,
          description: T.nilable(String),
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def update(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: Amount in cents.
        amount:,
        # Body param: Updated description for the payout.
        description:,
        # Body param: New date for Straddle to submit the payout for processing.
        payment_date:,
        # Body param: Replacement metadata for the payout. Up to 20 user-defined string
        # key-value pairs.
        metadata: nil,
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

      # Cancels a payout. The payout must have a status of `created`, `scheduled`, or
      # `on_hold`.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def cancel(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: Message explaining the payout status change.
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

      # Places a payout on hold to prevent submission for processing. The payout must
      # have a status of `created` or `scheduled`.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def hold(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: Message explaining the payout status change.
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

      # Return a payout with its sensitive fields unmasked.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedPayoutResponse)
      end
      def list_unmasked(
        # Unique identifier for the payout.
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

      # Releases a payout from `on_hold` and returns it to `created` for submission on
      # `payment_date`.
      sig do
        params(
          id: String,
          reason: T.nilable(String),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def release(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: Message explaining the payout status change.
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

      # Creates a new payout from a failed, reversed, or cancelled payout. The request
      # can override `description`, `external_id`, and `payment_date`. Other payment
      # details come from the original payout.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          external_id: T.nilable(String),
          payment_date: T.nilable(Date),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def resubmit(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: Description for the resubmitted payout. Defaults to the original
        # description if omitted.
        description: nil,
        # Body param: Your unique identifier for the resubmitted payout. Defaults to a new
        # value if omitted.
        external_id: nil,
        # Body param: Date when Straddle submits the resubmitted payout for processing.
        # Defaults to today if omitted.
        payment_date: nil,
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

      # Uploads a proof-of-authorization document for a payout. A later upload adds
      # another document and does not replace an existing one.
      sig do
        params(
          id: String,
          file: Straddle::Internal::FileInput,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def upload_authorization_proof(
        # Path param: Unique identifier for the payout.
        id,
        # Body param: The document file to upload as proof of authorization for this
        # payout. Supported file types are PDF (.pdf), PNG (.png), JPEG (.jpg, .jpeg),
        # Word (.doc), and Word (.docx), with a maximum file size of 10 MiB (10,485,760
        # bytes). Empty (0-byte) files are rejected. Uploaded files are validated for
        # matching file signatures (magic bytes) and file extension agreement.
        file:,
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
