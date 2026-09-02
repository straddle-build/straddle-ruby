# frozen_string_literal: true

module Straddle
  module Resources
    # Linked bank accounts connect external bank accounts to an account or platform
    # for charges, payouts, or billing.
    class LinkedBankAccounts
      # Some parameter documentations has been truncated, see
      # {Straddle::Models::LinkedBankAccountCreateParams} for more details.
      #
      # Creates a linked bank account for an account or platform, assigns its payment
      # purposes, and returns the linked bank account.
      #
      # @overload create(bank_account:, account_id: nil, description: nil, metadata: nil, platform_id: nil, purposes: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param bank_account [Straddle::Models::LinkedBankAccountCreateParams::BankAccount] Body param
      #
      # @param account_id [String, nil] Body param: ID of the account that will own the linked bank account. Omit this f
      #
      # @param description [String, nil] Body param: Your description for the linked bank account.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] Body param: Up to 20 user-defined key-value pairs.
      #
      # @param platform_id [String, nil] Body param: ID of the platform to associate with the linked bank account.
      #
      # @param purposes [Array<Symbol, Straddle::Models::LinkedBankAccountCreateParams::Purpose>, nil] Body param: Payment purposes for the linked bank account. Defaults to `charges`,
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param idempotency_key [String] Header param: Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::LinkedBankAccountResponse]
      #
      # @see Straddle::Models::LinkedBankAccountCreateParams
      def create(params)
        parsed, options = Straddle::LinkedBankAccountCreateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :post,
          path: "v1/linked_bank_accounts",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::LinkedBankAccountResponse,
          options: options
        )
      end

      # Returns the linked bank account with the specified ID. The response masks the
      # account number.
      #
      # @overload retrieve(linked_bank_account_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param linked_bank_account_id [String] The ID of the linked bank account.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::LinkedBankAccountResponse]
      #
      # @see Straddle::Models::LinkedBankAccountRetrieveParams
      def retrieve(linked_bank_account_id, params = {})
        parsed, options = Straddle::LinkedBankAccountRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/linked_bank_accounts/%1$s", linked_bank_account_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::LinkedBankAccountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::LinkedBankAccountUpdateParams} for more details.
      #
      # Updates bank account details and metadata, then returns the linked bank account.
      # The linked bank account must have status `created`, or status `onboarding` with
      # `status_detail.reason` set to `stuck`.
      #
      # @overload update(linked_bank_account_id, bank_account:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param linked_bank_account_id [String] Path param: The ID of the linked bank account.
      #
      # @param bank_account [Straddle::Models::LinkedBankAccountUpdateParams::BankAccount] Body param
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
      # @return [Straddle::Models::LinkedBankAccountResponse]
      #
      # @see Straddle::Models::LinkedBankAccountUpdateParams
      def update(linked_bank_account_id, params)
        parsed, options = Straddle::LinkedBankAccountUpdateParams.dump_request(params)
        header_params = {
          correlation_id: "correlation-id",
          idempotency_key: "idempotency-key",
          request_id: "request-id"
        }
        @client.request(
          method: :put,
          path: ["v1/linked_bank_accounts/%1$s", linked_bank_account_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Straddle::LinkedBankAccountResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Straddle::Models::LinkedBankAccountListParams} for more details.
      #
      # Returns a paginated list of linked bank accounts. Filter the list by account,
      # scope, purpose, or status.
      #
      # @overload list(account_id: nil, level: nil, page_number: nil, page_size: nil, purpose: nil, sort_by: nil, sort_order: nil, status: nil, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] Query param: Account ID used to filter the results.
      #
      # @param level [Symbol, Straddle::Models::LinkedBankAccountListParams::Level] Query param: Scope of linked bank accounts to return.
      #
      # @param page_number [Integer] Query param: Page number. Defaults to `1`.
      #
      # @param page_size [Integer] Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      # @param purpose [Symbol, Straddle::Models::LinkedBankAccountListParams::Purpose] Query param: Linked bank account purpose. Accepted values are `charges`, `payout
      #
      # @param sort_by [String] Query param: Field used to sort results. Defaults to `id`.
      #
      # @param sort_order [Symbol, Straddle::Models::LinkedBankAccountListParams::SortOrder] Query param: Sort direction. Defaults to `asc`.
      #
      # @param status [Symbol, Straddle::Models::LinkedBankAccountListParams::Status] Query param: Linked bank account status. Accepted values are `created`, `onboard
      #
      # @param correlation_id [String] Header param: Optional client-generated identifier for tracing a series of relat
      #
      # @param request_id [String] Header param: Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::LinkedBankAccountList]
      #
      # @see Straddle::Models::LinkedBankAccountListParams
      def list(params = {})
        query_params = %i[account_id level page_number page_size purpose sort_by sort_order status]
        parsed, options = Straddle::LinkedBankAccountListParams.dump_request(params)
        query = Straddle::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "v1/linked_bank_accounts",
          query: query,
          headers:
            parsed.except(*query_params).transform_keys(
              correlation_id: "correlation-id",
              request_id: "request-id"
            ),
          model: Straddle::LinkedBankAccountList,
          options: options
        )
      end

      # Cancels a linked bank account and returns it with status `canceled`. The linked
      # bank account must have status `created`.
      #
      # @overload cancel(linked_bank_account_id, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #
      # @param linked_bank_account_id [String] The ID of the linked bank account.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::LinkedBankAccountResponse]
      #
      # @see Straddle::Models::LinkedBankAccountCancelParams
      def cancel(linked_bank_account_id, params = {})
        parsed, options = Straddle::LinkedBankAccountCancelParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/linked_bank_accounts/%1$s/cancel", linked_bank_account_id],
          headers:
            parsed.transform_keys(
              correlation_id: "correlation-id",
              idempotency_key: "idempotency-key",
              request_id: "request-id"
            ),
          model: Straddle::LinkedBankAccountResponse,
          options: options
        )
      end

      # Returns the linked bank account with the specified ID without masking its
      # account number. This endpoint is available only when Straddle enables data
      # unmasking for the account.
      #
      # @overload list_unmasked(linked_bank_account_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param linked_bank_account_id [String] The ID of the linked bank account.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::UnmaskedLinkedBankAccountResponse]
      #
      # @see Straddle::Models::LinkedBankAccountListUnmaskedParams
      def list_unmasked(linked_bank_account_id, params = {})
        parsed, options = Straddle::LinkedBankAccountListUnmaskedParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/linked_bank_accounts/%1$s/unmask", linked_bank_account_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::UnmaskedLinkedBankAccountResponse,
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
