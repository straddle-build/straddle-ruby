# typed: strong

module Straddle
  module Resources
    # Charges debit a customer's bank account through a paykey.
    class Charges
      # Creates a charge against a customer's paykey. Straddle submits the charge for
      # processing on `payment_date` unless the charge is on hold.
      sig do
        params(
          amount: Integer,
          config: Straddle::ChargeConfiguration::OrHash,
          consent_type: Straddle::ConsentType::OrSymbol,
          currency: String,
          description: T.nilable(String),
          device: Straddle::PaymentDevice::OrHash,
          external_id: String,
          paykey: String,
          payment_date: Date,
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeResponse)
      end
      def create(
        # Body param: Amount in cents.
        amount:,
        # Body param
        config:,
        # Body param: How the customer authorized the charge. `internet` covers online and
        # mobile authorization. `signed` covers written or PDF-signed agreements.
        consent_type:,
        # Body param: Currency code. Only `USD` is supported.
        currency:,
        # Body param: Description shown on the customer's bank statement where supported.
        description:,
        # Body param
        device:,
        # Body param: Your unique identifier for the charge. Must be unique across
        # charges.
        external_id:,
        # Body param: The paykey token that identifies the customer's bank account.
        paykey:,
        # Body param: Date when Straddle submits the charge for processing.
        payment_date:,
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

      # Returns a charge by its unique identifier.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::ChargeResponse)
      end
      def retrieve(
        # Unique identifier for the charge.
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

      # Updates the description, amount, `payment_date`, or metadata. The charge must
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
        ).returns(Straddle::ChargeResponse)
      end
      def update(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Amount in cents.
        amount:,
        # Body param: Updated description for the charge.
        description:,
        # Body param: New date for Straddle to submit the charge for processing.
        payment_date:,
        # Body param: Replacement metadata for the charge. Up to 20 user-defined string
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

      # Cancels a charge. The charge must have a status of `created`, `scheduled`, or
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
        ).returns(Straddle::ChargeResponse)
      end
      def cancel(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Message explaining the charge status change.
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

      # Places a charge on hold to prevent submission for processing. The charge must
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
        ).returns(Straddle::ChargeResponse)
      end
      def hold(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Message explaining the charge status change.
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

      # Return a charge with its sensitive fields unmasked.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedChargeResponse)
      end
      def list_unmasked(
        # Unique identifier for the charge.
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

      # Creates a payout to return funds from a paid charge to the customer's bank
      # account. The payout is linked to the charge through `related_payments`. A charge
      # can be refunded once, either fully or partially.
      sig do
        params(
          id: String,
          amount: T.nilable(Integer),
          description: T.nilable(String),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          payment_date: T.nilable(Date),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::PayoutResponse)
      end
      def refund(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Refund amount in cents. `null` refunds the full original amount. A
        # value must be greater than zero and no more than the original charge amount.
        amount: nil,
        # Body param: Description for the refund payout. Defaults to a description that
        # identifies the original charge.
        description: nil,
        # Body param: Your unique identifier for the refund. Defaults to a new value if
        # omitted.
        external_id: nil,
        # Body param: User-defined string key-value pairs for the refund payout.
        metadata: nil,
        # Body param: Date when Straddle submits the refund payout for processing.
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

      # Releases a charge from `on_hold` and returns it to `created` for submission on
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
        ).returns(Straddle::ChargeResponse)
      end
      def release(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Message explaining the charge status change.
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

      # Creates a new charge from a failed, reversed, or cancelled charge. The request
      # can override `description`, `external_id`, and `payment_date`. Other payment
      # details come from the original charge.
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
        ).returns(Straddle::ChargeResponse)
      end
      def resubmit(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: Description for the resubmitted charge. Defaults to the original
        # description if omitted.
        description: nil,
        # Body param: Your unique identifier for the resubmitted charge. Defaults to a new
        # value if omitted.
        external_id: nil,
        # Body param: Date when Straddle submits the resubmitted charge for processing.
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

      # Uploads a proof-of-authorization document for a charge. A later upload adds
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
        ).returns(Straddle::ChargeResponse)
      end
      def upload_authorization_proof(
        # Path param: Unique identifier for the charge.
        id,
        # Body param: The document file to upload as proof of authorization for this
        # charge. Supported file types are PDF (.pdf), PNG (.png), JPEG (.jpg, .jpeg),
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
