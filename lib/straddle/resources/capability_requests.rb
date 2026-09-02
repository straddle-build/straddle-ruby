# frozen_string_literal: true

module Straddle
  module Resources
    # Capability requests change the payment, customer, and consent types available to
    # an account.
    class CapabilityRequests
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CapabilityRequestCreateParams} for more details.
      #
      # Creates one or more capability requests for an account and returns the resulting
      # requests.
      #
      # @overload create(account_id, businesses: nil, charges: nil, individuals: nil, internet: nil, payouts: nil, signed_agreement: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param businesses [Straddle::Models::CapabilityRequestCreateParams::Businesses] Body param: Request to enable or disable payments from businesses.
      #
      # @param charges [Straddle::Models::CapabilityRequestCreateParams::Charges] Body param: Requested charge capability and limits.
      #
      # @param individuals [Straddle::Models::CapabilityRequestCreateParams::Individuals] Body param: Request to enable or disable payments from individuals.
      #
      # @param internet [Straddle::Models::CapabilityRequestCreateParams::Internet] Body param: Request to enable or disable internet and mobile payment authorizati
      #
      # @param payouts [Straddle::Models::CapabilityRequestCreateParams::Payouts] Body param: Requested payout capability and limits.
      #
      # @param signed_agreement [Straddle::Models::CapabilityRequestCreateParams::SignedAgreement] Body param: Request to enable or disable signed-agreement payment authorization.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CapabilityRequestList]
      #
      # @see Straddle::Models::CapabilityRequestCreateParams
      def create(account_id, params = {})
        parsed, options = Straddle::CapabilityRequestCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: ["v1/accounts/%1$s/capability_requests", account_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::CapabilityRequestList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CapabilityRequestListParams} for more details.
      #
      # Returns a paginated list of capability requests for an account. Filter the list
      # by capability type, category, or status.
      #
      # @overload list(account_id, category: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param category [Symbol, Straddle::Models::CapabilityRequestListParams::Category] Query param: Capability category to return.
      #
      # @param page_number [Integer] Query param: Page number. Defaults to `1`.
      #
      # @param page_size [Integer] Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      # @param sort_by [String] Query param: Field used to sort results. Defaults to `id`.
      #
      # @param sort_order [Symbol, Straddle::Models::CapabilityRequestListParams::SortOrder] Query param: Sort direction. Defaults to `asc`.
      #
      # @param status [Symbol, Straddle::Models::CapabilityRequestListParams::Status] Query param: Capability request status to return.
      #
      # @param type [Symbol, Straddle::Models::CapabilityRequestListParams::Type] Query param: Capability type to return.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CapabilityRequestList]
      #
      # @see Straddle::Models::CapabilityRequestListParams
      def list(account_id, params = {})
        query_params = %i[category page_number page_size sort_by sort_order status type]
        parsed, options = Straddle::CapabilityRequestListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s/capability_requests", account_id],
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
          model: Straddle::CapabilityRequestList,
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
