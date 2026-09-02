# frozen_string_literal: true

module Straddle
  module Resources
    # Customers are individuals or businesses that send or receive payments through
    # your integration.
    class Customers
      # Customers are individuals or businesses that send or receive payments through
      # your integration.
      # @return [Straddle::Resources::Customers::Review]
      attr_reader :review

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerCreateParams} for more details.
      #
      # Creates a customer and starts identity, fraud, and risk assessments.
      #
      # @overload create(device:, email:, name:, phone:, type:, address: nil, compliance_profile: nil, config: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param device [Straddle::Models::CustomerDevice] Body param
      #
      # @param email [String] Body param: Customer email address.
      #
      # @param name [String] Body param: Full name for an individual customer or business name for a business
      #
      # @param phone [String] Body param: Customer phone number in E.164 format. A mobile number is preferred.
      #
      # @param type [Symbol, Straddle::Models::CustomerType] Body param
      #
      # @param address [Straddle::Models::CustomerAddress, nil] Body param: Customer postal address. When provided, the object must include all
      #
      # @param compliance_profile [Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile, nil] Body param: Customer compliance profile. When provided, the object must include
      #
      # @param config [Straddle::Models::CustomerConfiguration] Body param
      #
      # @param external_id [String, nil] Body param: Unique identifier for the customer in your system.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 user-defined key-value pairs associated with the customer.
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
      # @return [Straddle::Models::CustomerResponse]
      #
      # @see Straddle::Models::CustomerCreateParams
      def create(params)
        parsed, options = Straddle::CustomerCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :post,
          path: "v1/customers",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::CustomerResponse,
          options: options
        )
      end

      # Returns a customer by `id`.
      #
      # @overload retrieve(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the customer.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerResponse]
      #
      # @see Straddle::Models::CustomerRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Straddle::CustomerRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/customers/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::CustomerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerUpdateParams} for more details.
      #
      # Updates an existing customer's profile, status, and metadata.
      #
      # @overload update(id, device:, email:, name:, phone:, status:, address: nil, compliance_profile: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Path param: Unique identifier for the customer.
      #
      # @param device [Straddle::Models::CustomerDevice] Body param
      #
      # @param email [String] Body param: Customer email address.
      #
      # @param name [String] Body param: Full name for an individual customer or business name for a business
      #
      # @param phone [String] Body param: Customer phone number in E.164 format.
      #
      # @param status [Symbol, Straddle::Models::CustomerStatus] Body param
      #
      # @param address [Straddle::Models::CustomerAddress, nil] Body param: Customer postal address. When provided, the object must include all
      #
      # @param compliance_profile [Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile, nil] Body param
      #
      # @param external_id [String, nil] Body param: Unique identifier for the customer in your system.
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Up to 20 user-defined key-value pairs associated with the customer.
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
      # @return [Straddle::Models::CustomerResponse]
      #
      # @see Straddle::Models::CustomerUpdateParams
      def update(id, params)
        parsed, options = Straddle::CustomerUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id",
          straddle_account_id: "straddle-account-id"
        }
        @client.request(
          method: :put,
          path: ["v1/customers/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::CustomerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::CustomerListParams} for more details.
      #
      # Returns a paginated list of customers for the account. Optional query parameters
      # filter, search, and sort the results.
      #
      # @overload list(created_from: nil, created_to: nil, email: nil, external_id: nil, name: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, types: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param created_from [Time] Query param: Start date for filtering by `created_at` date.
      #
      # @param created_to [Time] Query param: End date for filtering by `created_at` date.
      #
      # @param email [String] Query param: Filter customers by `email` address.
      #
      # @param external_id [String] Query param: Filter by your system's `external_id`.
      #
      # @param name [String] Query param: Filter customers by `name` (partial match).
      #
      # @param page_number [Integer] Query param: Page number for paginated results. Starts at 1.
      #
      # @param page_size [Integer] Query param: Number of results per page. Maximum: 1000.
      #
      # @param search_text [String] Query param: General search term to filter customers.
      #
      # @param sort_by [Symbol, Straddle::Models::CustomerListParams::SortBy] Query param: Field used to sort the results.
      #
      # @param sort_order [Symbol, Straddle::Models::SortOrder] Query param: Order in which to sort the results.
      #
      # @param status [Array<Symbol, Straddle::Models::CustomerStatus>] Query param: Filter customers by their current `status`.
      #
      # @param types [Array<Symbol, Straddle::Models::CustomerType>] Query param: Filter by customer type `individual` or `business`.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] Header param: For platform requests, the embedded account UUID that sets the req
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerSummaryList]
      #
      # @see Straddle::Models::CustomerListParams
      def list(params = {})
        query_params = %i[
          created_from
          created_to
          email
          external_id
          name
          page_number
          page_size
          search_text
          sort_by
          sort_order
          status
          types
        ]
        parsed, options = Straddle::CustomerListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/customers",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::CustomerSummaryList,
          options: options
        )
      end

      # Permanently deletes a customer record. The deletion cannot be undone. Use this
      # endpoint only to meet regulatory or privacy requirements.
      #
      # @overload delete(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the customer.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerResponse]
      #
      # @see Straddle::Models::CustomerDeleteParams
      def delete(id, params = {})
        parsed, options = Straddle::CustomerDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v1/customers/%1$s", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::CustomerResponse,
          options: options
        )
      end

      # Returns unmasked details for a customer, including personally identifiable
      # information. Straddle must enable this endpoint for your account. Use this
      # endpoint only when unmasked data is necessary.
      #
      # @overload list_unmasked(id, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the customer.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::UnmaskedCustomerResponse]
      #
      # @see Straddle::Models::CustomerListUnmaskedParams
      def list_unmasked(id, params = {})
        parsed, options = Straddle::CustomerListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/customers/%1$s/unmasked", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::UnmaskedCustomerResponse,
          options: options
        )
      end

      # Starts a new identity review for a customer. The review runs asynchronously.
      # Webhooks and the customer review endpoint return updated results.
      #
      # @overload refresh_review(id, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #
      # @param id [String] Unique identifier for the customer.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::CustomerResponse]
      #
      # @see Straddle::Models::CustomerRefreshReviewParams
      def refresh_review(id, params = {})
        parsed, options = Straddle::CustomerRefreshReviewParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/customers/%1$s/refresh_review", id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id",
              straddle_account_id: "straddle-account-id"
            ),
          model: Straddle::CustomerResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
        @review = Straddle::Resources::Customers::Review.new(client: client)
      end
    end
  end
end
