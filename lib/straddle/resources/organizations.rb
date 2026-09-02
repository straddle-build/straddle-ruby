# frozen_string_literal: true

module Straddle
  module Resources
    # Organizations group related Straddle accounts.
    class Organizations
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::OrganizationCreateParams} for more details.
      #
      # Creates an organization for your platform and returns it. Organizations group
      # related accounts and users.
      #
      # @overload create(name:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param name [String] Body param: Organization name.
      #
      # @param external_id [String, nil] Body param: Your unique ID for the organization.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] Body param: Up to 20 user-defined key-value pairs.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::OrganizationResponse]
      #
      # @see Straddle::Models::OrganizationCreateParams
      def create(params)
        parsed, options = Straddle::OrganizationCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: "v1/organizations",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::OrganizationResponse,
          options: options
        )
      end

      # Returns the organization with the specified ID.
      #
      # @overload retrieve(organization_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param organization_id [String] The ID of the organization.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::OrganizationResponse]
      #
      # @see Straddle::Models::OrganizationRetrieveParams
      def retrieve(organization_id, params = {})
        parsed, options = Straddle::OrganizationRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/organizations/%1$s", organization_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::OrganizationResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::OrganizationListParams} for more details.
      #
      # Returns a paginated list of organizations for your platform. Filter the list by
      # name or external ID.
      #
      # @overload list(external_id: nil, name: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param external_id [String] Query param: Your external ID for the organization.
      #
      # @param name [String] Query param: Organization name. Supports partial matches.
      #
      # @param page_number [Integer] Query param: Page number. Defaults to `1`.
      #
      # @param page_size [Integer] Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      # @param sort_by [String] Query param: Field used to sort results. Defaults to `id`.
      #
      # @param sort_order [Symbol, Straddle::Models::OrganizationListParams::SortOrder] Query param: Sort direction. Defaults to `asc`.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::OrganizationList]
      #
      # @see Straddle::Models::OrganizationListParams
      def list(params = {})
        query_params = %i[external_id name page_number page_size sort_by sort_order]
        parsed, options = Straddle::OrganizationListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/organizations",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
          model: Straddle::OrganizationList,
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
