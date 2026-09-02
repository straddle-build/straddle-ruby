# frozen_string_literal: true

module Straddle
  module Resources
    # Charges debit a customer's bank account through a paykey.
    class Charges
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeCreateParams} for more details.
      #
      # Creates a charge against a customer's paykey. Straddle submits the charge for
      # processing on `payment_date` unless the charge is on hold.
      #
      # @overload create(amount:, config:, consent_type:, currency:, description:, device:, external_id:, paykey:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param amount [Integer] Body param: Amount in cents.
      #
      # @param config [Straddle::Models::ChargeConfiguration] Body param
      #
      # @param consent_type [Symbol, Straddle::Models::ConsentType] Body param: How the customer authorized the charge. `internet` covers online and
      #
      # @param currency [String] Body param: Currency code. Only `USD` is supported.
      #
      # @param description [String, nil] Body param: Description shown on the customer's bank statement where supported.
      #
      # @param device [Straddle::Models::PaymentDevice] Body param
      #
      # @param external_id [String] Body param: Your unique identifier for the charge. Must be unique across charges
      #
      # @param paykey [String] Body param: The paykey token that identifies the customer's bank account.
      #
      # @param payment_date [Date] Body param: Date when Straddle submits the charge for processing.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 user-defined string key-value pairs.
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeCreateParams
      def create(params)
        parsed, options = Straddle::ChargeCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: "v1/charges",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Returns a charge by its unique identifier.
      #
      # @overload retrieve(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the charge.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Straddle::ChargeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/charges/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeUpdateParams} for more details.
      #
      # Updates the description, amount, `payment_date`, or metadata. The charge must
      # have a status of `created` or `on_hold`.
      #
      # @overload update(id, amount:, description:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param amount [Integer] Body param: Amount in cents.
      #
      # @param description [String, nil] Body param: Updated description for the charge.
      #
      # @param payment_date [Date] Body param: New date for Straddle to submit the charge for processing.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Replacement metadata for the charge. Up to 20 user-defined string ke
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeUpdateParams
      def update(id, params)
        parsed, options = Straddle::ChargeUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeCancelParams} for more details.
      #
      # Cancels a charge. The charge must have a status of `created`, `scheduled`, or
      # `on_hold`.
      #
      # @overload cancel(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param reason [String, nil] Body param: Message explaining the charge status change.
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeCancelParams
      def cancel(id, params = {})
        parsed, options = Straddle::ChargeCancelParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeHoldParams} for more details.
      #
      # Places a charge on hold to prevent submission for processing. The charge must
      # have a status of `created` or `scheduled`.
      #
      # @overload hold(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param reason [String, nil] Body param: Message explaining the charge status change.
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeHoldParams
      def hold(id, params = {})
        parsed, options = Straddle::ChargeHoldParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/hold", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Return a charge with its sensitive fields unmasked.
      #
      # @overload list_unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the charge.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::UnmaskedChargeResponse]
      #
      # @see Straddle::Models::ChargeListUnmaskedParams
      def list_unmasked(id, params = {})
        parsed, options = Straddle::ChargeListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/charges/%1$s/unmask", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::UnmaskedChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeRefundParams} for more details.
      #
      # Creates a payout to return funds from a paid charge to the customer's bank
      # account. The payout is linked to the charge through `related_payments`. A charge
      # can be refunded once, either fully or partially.
      #
      # @overload refund(id, amount: nil, description: nil, external_id: nil, metadata: nil, payment_date: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param amount [Integer, nil] Body param: Refund amount in cents. `null` refunds the full original amount. A v
      #
      # @param description [String, nil] Body param: Description for the refund payout. Defaults to a description that id
      #
      # @param external_id [String, nil] Body param: Your unique identifier for the refund. Defaults to a new value if om
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: User-defined string key-value pairs for the refund payout.
      #
      # @param payment_date [Date, nil] Body param: Date when Straddle submits the refund payout for processing. Default
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
      # @return [Straddle::Models::PayoutResponse]
      #
      # @see Straddle::Models::ChargeRefundParams
      def refund(id, params = {})
        parsed, options = Straddle::ChargeRefundParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: ["v1/charges/%1$s/refund", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeReleaseParams} for more details.
      #
      # Releases a charge from `on_hold` and returns it to `created` for submission on
      # `payment_date`.
      #
      # @overload release(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param reason [String, nil] Body param: Message explaining the charge status change.
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeReleaseParams
      def release(id, params = {})
        parsed, options = Straddle::ChargeReleaseParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/charges/%1$s/release", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeResubmitParams} for more details.
      #
      # Creates a new charge from a failed, reversed, or cancelled charge. The request
      # can override `description`, `external_id`, and `payment_date`. Other payment
      # details come from the original charge.
      #
      # @overload resubmit(id, description: nil, external_id: nil, payment_date: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param description [String, nil] Body param: Description for the resubmitted charge. Defaults to the original des
      #
      # @param external_id [String, nil] Body param: Your unique identifier for the resubmitted charge. Defaults to a new
      #
      # @param payment_date [Date, nil] Body param: Date when Straddle submits the resubmitted charge for processing. De
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeResubmitParams
      def resubmit(id, params = {})
        parsed, options = Straddle::ChargeResubmitParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: ["v1/charges/%1$s/resubmit", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::ChargeUploadAuthorizationProofParams} for more details.
      #
      # Uploads a proof-of-authorization document for a charge. A later upload adds
      # another document and does not replace an existing one.
      #
      # @overload upload_authorization_proof(id, file:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the charge.
      #
      # @param file [Pathname, StringIO, IO, String, Straddle::FilePart] Body param: The document file to upload as proof of authorization for this charg
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
      # @return [Straddle::Models::ChargeResponse]
      #
      # @see Straddle::Models::ChargeUploadAuthorizationProofParams
      def upload_authorization_proof(id, params)
        parsed, options = Straddle::ChargeUploadAuthorizationProofParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: ["v1/charges/%1$s/authorization", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::ChargeResponse,
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
