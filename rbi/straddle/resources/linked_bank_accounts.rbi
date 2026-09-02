# typed: strong

module Straddle
  module Resources
    # Linked bank accounts connect external bank accounts to an account or platform
    # for charges, payouts, or billing.
    class LinkedBankAccounts
      # Creates a linked bank account for an account or platform, assigns its payment
      # purposes, and returns the linked bank account.
      sig do
        params(
          bank_account:
            Straddle::LinkedBankAccountCreateParams::BankAccount::OrHash,
          account_id: T.nilable(String),
          description: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          platform_id: T.nilable(String),
          purposes:
            T.nilable(
              T::Array[
                Straddle::LinkedBankAccountCreateParams::Purpose::OrSymbol
              ]
            ),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::LinkedBankAccountResponse)
      end
      def create(
        # Body param
        bank_account:,
        # Body param: ID of the account that will own the linked bank account. Omit this
        # field to assign ownership to the platform in the authenticated request context.
        account_id: nil,
        # Body param: Your description for the linked bank account.
        description: nil,
        # Body param: Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Body param: ID of the platform to associate with the linked bank account.
        platform_id: nil,
        # Body param: Payment purposes for the linked bank account. Defaults to `charges`,
        # `payouts`, and `billing`.
        purposes: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Returns the linked bank account with the specified ID. The response masks the
      # account number.
      sig do
        params(
          linked_bank_account_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::LinkedBankAccountResponse)
      end
      def retrieve(
        # The ID of the linked bank account.
        linked_bank_account_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Updates bank account details and metadata, then returns the linked bank account.
      # The linked bank account must have status `created`, or status `onboarding` with
      # `status_detail.reason` set to `stuck`.
      sig do
        params(
          linked_bank_account_id: String,
          bank_account:
            Straddle::LinkedBankAccountUpdateParams::BankAccount::OrHash,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::LinkedBankAccountResponse)
      end
      def update(
        # Path param: The ID of the linked bank account.
        linked_bank_account_id,
        # Body param
        bank_account:,
        # Body param: Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of linked bank accounts. Filter the list by account,
      # scope, purpose, or status.
      sig do
        params(
          account_id: String,
          level: Straddle::LinkedBankAccountListParams::Level::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          purpose: Straddle::LinkedBankAccountListParams::Purpose::OrSymbol,
          sort_by: String,
          sort_order:
            Straddle::LinkedBankAccountListParams::SortOrder::OrSymbol,
          status: Straddle::LinkedBankAccountListParams::Status::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::LinkedBankAccountList)
      end
      def list(
        # Query param: Account ID used to filter the results.
        account_id: nil,
        # Query param: Scope of linked bank accounts to return.
        level: nil,
        # Query param: Page number. Defaults to `1`.
        page_number: nil,
        # Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Query param: Linked bank account purpose. Accepted values are `charges`,
        # `payouts`, and `billing`.
        purpose: nil,
        # Query param: Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Query param: Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Query param: Linked bank account status. Accepted values are `created`,
        # `onboarding`, `active`, `rejected`, `inactive`, and `canceled`.
        status: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Cancels a linked bank account and returns it with status `canceled`. The linked
      # bank account must have status `created`.
      sig do
        params(
          linked_bank_account_id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::LinkedBankAccountResponse)
      end
      def cancel(
        # The ID of the linked bank account.
        linked_bank_account_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Returns the linked bank account with the specified ID without masking its
      # account number. This endpoint is available only when Straddle enables data
      # unmasking for the account.
      sig do
        params(
          linked_bank_account_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedLinkedBankAccountResponse)
      end
      def list_unmasked(
        # The ID of the linked bank account.
        linked_bank_account_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
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
