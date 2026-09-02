# frozen_string_literal: true

module Straddle
  module Resources
    # Payouts send money to a customer's bank account through a paykey.
    class Payouts
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutCreateParams} for more details.
      #
      # Creates a payout to a customer's bank account. Straddle submits the payout for
      # processing on `payment_date` unless the payout is on hold.
      #
      # @overload create(amount:, currency:, description:, device:, external_id:, paykey:, payment_date:, config: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param amount [Integer] Body param: Amount in cents.
      #
      # @param currency [String] Body param: Currency code. Only `USD` is supported.
      #
      # @param description [String, nil] Body param: Description shown on the customer's bank statement where supported.
      #
      # @param device [Straddle::Models::PaymentDevice] Body param: Device used when the customer authorized the payout.
      #
      # @param external_id [String] Body param: Your unique identifier for the payout. Must be unique across payouts
      #
      # @param paykey [String] Body param: The paykey token that identifies the customer's bank account.
      #
      # @param payment_date [Date] Body param: Date when Straddle submits the payout for processing.
      #
      # @param config [Straddle::Models::PayoutConfiguration] Body param
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
      # @return [Straddle::Models::PayoutResponse]
      #
      # @see Straddle::Models::PayoutCreateParams
      def create(params)
        parsed, options = Straddle::PayoutCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: "v1/payouts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Returns a payout by its unique identifier.
      #
      # @overload retrieve(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the payout.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::PayoutResponse]
      #
      # @see Straddle::Models::PayoutRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Straddle::PayoutRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/payouts/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutUpdateParams} for more details.
      #
      # Updates the description, amount, `payment_date`, or metadata. The payout must
      # have a status of `created` or `on_hold`.
      #
      # @overload update(id, amount:, description:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param amount [Integer] Body param: Amount in cents.
      #
      # @param description [String, nil] Body param: Updated description for the payout.
      #
      # @param payment_date [Date] Body param: New date for Straddle to submit the payout for processing.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Replacement metadata for the payout. Up to 20 user-defined string ke
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
      # @see Straddle::Models::PayoutUpdateParams
      def update(id, params)
        parsed, options = Straddle::PayoutUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutCancelParams} for more details.
      #
      # Cancels a payout. The payout must have a status of `created`, `scheduled`, or
      # `on_hold`.
      #
      # @overload cancel(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param reason [String, nil] Body param: Message explaining the payout status change.
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
      # @see Straddle::Models::PayoutCancelParams
      def cancel(id, params = {})
        parsed, options = Straddle::PayoutCancelParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/cancel", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutHoldParams} for more details.
      #
      # Places a payout on hold to prevent submission for processing. The payout must
      # have a status of `created` or `scheduled`.
      #
      # @overload hold(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param reason [String, nil] Body param: Message explaining the payout status change.
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
      # @see Straddle::Models::PayoutHoldParams
      def hold(id, params = {})
        parsed, options = Straddle::PayoutHoldParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/hold", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Return a payout with its sensitive fields unmasked.
      #
      # @overload list_unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the payout.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::UnmaskedPayoutResponse]
      #
      # @see Straddle::Models::PayoutListUnmaskedParams
      def list_unmasked(id, params = {})
        parsed, options = Straddle::PayoutListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/payouts/%1$s/unmask", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::UnmaskedPayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutReleaseParams} for more details.
      #
      # Releases a payout from `on_hold` and returns it to `created` for submission on
      # `payment_date`.
      #
      # @overload release(id, reason: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param reason [String, nil] Body param: Message explaining the payout status change.
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
      # @see Straddle::Models::PayoutReleaseParams
      def release(id, params = {})
        parsed, options = Straddle::PayoutReleaseParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/payouts/%1$s/release", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutResubmitParams} for more details.
      #
      # Creates a new payout from a failed, reversed, or cancelled payout. The request
      # can override `description`, `external_id`, and `payment_date`. Other payment
      # details come from the original payout.
      #
      # @overload resubmit(id, description: nil, external_id: nil, payment_date: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param description [String, nil] Body param: Description for the resubmitted payout. Defaults to the original des
      #
      # @param external_id [String, nil] Body param: Your unique identifier for the resubmitted payout. Defaults to a new
      #
      # @param payment_date [Date, nil] Body param: Date when Straddle submits the resubmitted payout for processing. De
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
      # @see Straddle::Models::PayoutResubmitParams
      def resubmit(id, params = {})
        parsed, options = Straddle::PayoutResubmitParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: ["v1/payouts/%1$s/resubmit", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::PayoutUploadAuthorizationProofParams} for more details.
      #
      # Uploads a proof-of-authorization document for a payout. A later upload adds
      # another document and does not replace an existing one.
      #
      # @overload upload_authorization_proof(id, file:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the payout.
      #
      # @param file [Pathname, StringIO, IO, String, Straddle::FilePart] Body param: The document file to upload as proof of authorization for this payou
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
      # @see Straddle::Models::PayoutUploadAuthorizationProofParams
      def upload_authorization_proof(id, params)
        parsed, options = Straddle::PayoutUploadAuthorizationProofParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: ["v1/payouts/%1$s/authorization", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::PayoutResponse,
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
