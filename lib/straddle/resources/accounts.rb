# frozen_string_literal: true

module Straddle
  module Resources
    # Accounts represent businesses that use Straddle through a platform.
    class Accounts
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::AccountCreateParams} for more details.
      #
      # Creates a business account in the specified organization and returns the
      # account.
      #
      # @overload create(access_level:, account_type:, business_profile:, organization_id:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param access_level [Symbol, Straddle::Models::AccountCreateParams::AccessLevel] Body param: The account access level. `standard` provides normal account access,
      #
      # @param account_type [Symbol, Straddle::Models::AccountCreateParams::AccountType] Body param: Account type. The only accepted value is `business`.
      #
      # @param business_profile [Straddle::Models::AccountBusinessProfile] Body param
      #
      # @param organization_id [String] Body param: ID of the organization that will own the account.
      #
      # @param external_id [String, nil] Body param: Your unique ID for the account.
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
      # @return [Straddle::Models::AccountResponse]
      #
      # @see Straddle::Models::AccountCreateParams
      def create(params)
        parsed, options = Straddle::AccountCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: "v1/accounts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::AccountResponse,
          options: options
        )
      end

      # Returns the account with the specified ID.
      #
      # @overload retrieve(account_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] The ID of the account.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::AccountResponse]
      #
      # @see Straddle::Models::AccountRetrieveParams
      def retrieve(account_id, params = {})
        parsed, options = Straddle::AccountRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/accounts/%1$s", account_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::AccountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::AccountUpdateParams} for more details.
      #
      # Updates an account's business profile, metadata, and external ID, then returns
      # the account.
      #
      # @overload update(account_id, business_profile:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param business_profile [Straddle::Models::AccountBusinessProfile] Body param
      #
      # @param external_id [String, nil] Body param: Your unique ID for the account.
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
      # @return [Straddle::Models::AccountResponse]
      #
      # @see Straddle::Models::AccountUpdateParams
      def update(account_id, params)
        parsed, options = Straddle::AccountUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :put,
          path: ["v1/accounts/%1$s", account_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::AccountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::AccountListParams} for more details.
      #
      # Returns a paginated list of accounts for your platform. Filter the list by
      # status, type, external ID, or text search.
      #
      # @overload list(external_id: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param external_id [String] Query param: Your external ID for the account.
      #
      # @param page_number [Integer] Query param: Page number. Defaults to `1`.
      #
      # @param page_size [Integer] Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      # @param search_text [String] Query param: Text to search for across account fields.
      #
      # @param sort_by [String] Query param: Field used to sort results. Defaults to `id`.
      #
      # @param sort_order [Symbol, Straddle::Models::AccountListParams::SortOrder] Query param: Sort direction. Defaults to `asc`.
      #
      # @param status [Symbol, Straddle::Models::AccountListParams::Status] Query param: Account status to return.
      #
      # @param type [Symbol, Straddle::Models::AccountListParams::Type] Query param: Account type to return.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::AccountList]
      #
      # @see Straddle::Models::AccountListParams
      def list(params = {})
        query_params = %i[external_id page_number page_size search_text sort_by sort_order status type]
        parsed, options = Straddle::AccountListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/accounts",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
          model: Straddle::AccountList,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::AccountOnboardParams} for more details.
      #
      # Starts onboarding and records the account's acceptance of Straddle's Terms of
      # Service. The account must have at least one representative and one linked bank
      # account. This operation also moves all associated representatives and linked
      # bank accounts to `onboarding`.
      #
      # @overload onboard(account_id, terms_of_service:, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param terms_of_service [Straddle::Models::TermsOfService] Body param
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::AccountResponse]
      #
      # @see Straddle::Models::AccountOnboardParams
      def onboard(account_id, params)
        parsed, options = Straddle::AccountOnboardParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: ["v1/accounts/%1$s/onboard", account_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::AccountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::AccountSimulateOnboardingParams} for more details.
      #
      # Simulates an account status transition to `onboarding` or `active` in the
      # sandbox and returns the account.
      #
      # @overload simulate_onboarding(account_id, final_status: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Path param: The ID of the account.
      #
      # @param final_status [Symbol, Straddle::Models::AccountSimulateOnboardingParams::FinalStatus] Query param: Final account status to produce in the sandbox simulation.
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::AccountResponse]
      #
      # @see Straddle::Models::AccountSimulateOnboardingParams
      def simulate_onboarding(account_id, params = {})
        query_params = [:final_status]
        parsed, options = Straddle::AccountSimulateOnboardingParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: ["v1/accounts/%1$s/simulate", account_id],
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id"
            ),
          model: Straddle::AccountResponse,
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
