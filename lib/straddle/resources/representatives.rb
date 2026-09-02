# frozen_string_literal: true

module Straddle
  module Resources
    # Representatives are people associated with a business account for ownership,
    # control, or authorization purposes.
    class Representatives
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::RepresentativeCreateParams} for more details.
      #
      # Creates a representative for an account and returns the representative.
      # Relationship fields identify primary representatives, control persons, and
      # owners.
      #
      # @overload create(account_id:, dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Body param: ID of the account associated with the representative.
      #
      # @param dob [Date] Body param: Representative's date of birth in `YYYY-MM-DD` format.
      #
      # @param email [String] Body param: Representative's company email address.
      #
      # @param first_name [String] Body param: Representative's first name.
      #
      # @param last_name [String] Body param: Representative's last name.
      #
      # @param mobile_number [String] Body param: Representative's mobile phone number in E.164 format.
      #
      # @param relationship [Straddle::Models::RepresentativeRelationship] Body param
      #
      # @param ssn_last4 [String] Body param: Last four digits of the representative's Social Security number.
      #
      # @param external_id [String, nil] Body param: Your unique ID for the representative.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 user-defined key-value pairs.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::RepresentativeResponse]
      #
      # @see Straddle::Models::RepresentativeCreateParams
      def create(params)
        parsed, options = Straddle::RepresentativeCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: "v1/representatives",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::RepresentativeResponse,
          options: options
        )
      end

      # Returns the representative with the specified ID.
      #
      # @overload retrieve(representative_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param representative_id [String] The ID of the representative.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::RepresentativeResponse]
      #
      # @see Straddle::Models::RepresentativeRetrieveParams
      def retrieve(representative_id, params = {})
        parsed, options = Straddle::RepresentativeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/representatives/%1$s", representative_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::RepresentativeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::RepresentativeUpdateParams} for more details.
      #
      # Updates a representative's personal, contact, relationship, external ID, and
      # metadata fields, then returns the representative.
      #
      # @overload update(representative_id, dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param representative_id [String] Path param: The ID of the representative.
      #
      # @param dob [Date] Body param: Representative's date of birth in `YYYY-MM-DD` format.
      #
      # @param email [String] Body param: Representative's email address.
      #
      # @param first_name [String] Body param: Representative's first name.
      #
      # @param last_name [String] Body param: Representative's last name.
      #
      # @param mobile_number [String] Body param: Representative's mobile phone number in E.164 format.
      #
      # @param relationship [Straddle::Models::RepresentativeRelationship] Body param
      #
      # @param ssn_last4 [String] Body param: Last four digits of the representative's Social Security number.
      #
      # @param external_id [String, nil] Body param: Your unique ID for the representative.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 user-defined key-value pairs.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::RepresentativeResponse]
      #
      # @see Straddle::Models::RepresentativeUpdateParams
      def update(representative_id, params)
        parsed, options = Straddle::RepresentativeUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :put,
          path: ["v1/representatives/%1$s", representative_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::RepresentativeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::RepresentativeListParams} for more details.
      #
      # Returns a paginated list of representatives. Filter the list by account,
      # organization, platform, or scope.
      #
      # @overload list(account_id: nil, level: nil, organization_id: nil, page_number: nil, page_size: nil, platform_id: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account ID used to filter the results.
      #
      # @param level [Symbol, Straddle::Models::RepresentativeListParams::Level] Query param: Scope of representatives to return.
      #
      # @param organization_id [String] Query param: Organization ID used to filter the results.
      #
      # @param page_number [Integer] Query param: Page number. Defaults to `1`.
      #
      # @param page_size [Integer] Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      # @param platform_id [String] Query param: Platform ID used to filter the results.
      #
      # @param sort_by [String] Query param: Field used to sort results. Defaults to `id`.
      #
      # @param sort_order [Symbol, Straddle::Models::RepresentativeListParams::SortOrder] Query param: Sort direction. Defaults to `asc`.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::RepresentativeList]
      #
      # @see Straddle::Models::RepresentativeListParams
      def list(params = {})
        query_params = %i[
          account_id
          level
          organization_id
          page_number
          page_size
          platform_id
          sort_by
          sort_order
        ]
        parsed, options = Straddle::RepresentativeListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/representatives",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
          model: Straddle::RepresentativeList,
          options: options
        )
      end

      # Returns the representative with the specified ID without masking sensitive
      # fields. This endpoint requires an administrator role.
      #
      # @overload list_unmasked(representative_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param representative_id [String] The ID of the representative.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::UnmaskedRepresentativeResponse]
      #
      # @see Straddle::Models::RepresentativeListUnmaskedParams
      def list_unmasked(representative_id, params = {})
        parsed, options = Straddle::RepresentativeListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/representatives/%1$s/unmask", representative_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::UnmaskedRepresentativeResponse,
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
