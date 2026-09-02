# typed: strong

module Straddle
  module Resources
    # Accounts represent businesses that use Straddle through a platform.
    class Accounts
      # Creates a business account in the specified organization and returns the
      # account.
      sig do
        params(
          access_level: Straddle::AccountCreateParams::AccessLevel::OrSymbol,
          account_type: Straddle::AccountCreateParams::AccountType::OrSymbol,
          business_profile: Straddle::AccountBusinessProfile::OrHash,
          organization_id: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountResponse)
      end
      def create(
        # Body param: The account access level. `standard` provides normal account access,
        # including access to the Straddle dashboard. `managed` means the platform manages
        # the account and account users cannot access the Straddle dashboard.
        access_level:,
        # Body param: Account type. The only accepted value is `business`.
        account_type:,
        # Body param
        business_profile:,
        # Body param: ID of the organization that will own the account.
        organization_id:,
        # Body param: Your unique ID for the account.
        external_id: nil,
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

      # Returns the account with the specified ID.
      sig do
        params(
          account_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountResponse)
      end
      def retrieve(
        # The ID of the account.
        account_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Updates an account's business profile, metadata, and external ID, then returns
      # the account.
      sig do
        params(
          account_id: String,
          business_profile: Straddle::AccountBusinessProfile::OrHash,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountResponse)
      end
      def update(
        # Path param: The ID of the account.
        account_id,
        # Body param
        business_profile:,
        # Body param: Your unique ID for the account.
        external_id: nil,
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

      # Returns a paginated list of accounts for your platform. Filter the list by
      # status, type, external ID, or text search.
      sig do
        params(
          external_id: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: String,
          sort_order: Straddle::AccountListParams::SortOrder::OrSymbol,
          status: Straddle::AccountListParams::Status::OrSymbol,
          type: Straddle::AccountListParams::Type::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountList)
      end
      def list(
        # Query param: Your external ID for the account.
        external_id: nil,
        # Query param: Page number. Defaults to `1`.
        page_number: nil,
        # Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Query param: Text to search for across account fields.
        search_text: nil,
        # Query param: Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Query param: Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Query param: Account status to return.
        status: nil,
        # Query param: Account type to return.
        type: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Starts onboarding and records the account's acceptance of Straddle's Terms of
      # Service. The account must have at least one representative and one linked bank
      # account. This operation also moves all associated representatives and linked
      # bank accounts to `onboarding`.
      sig do
        params(
          account_id: String,
          terms_of_service: Straddle::TermsOfService::OrHash,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountResponse)
      end
      def onboard(
        # Path param: The ID of the account.
        account_id,
        # Body param
        terms_of_service:,
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

      # Simulates an account status transition to `onboarding` or `active` in the
      # sandbox and returns the account.
      sig do
        params(
          account_id: String,
          final_status:
            Straddle::AccountSimulateOnboardingParams::FinalStatus::OrSymbol,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountResponse)
      end
      def simulate_onboarding(
        # Path param: The ID of the account.
        account_id,
        # Query param: Final account status to produce in the sandbox simulation.
        final_status: nil,
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

      # @api private
      sig { params(client: Straddle::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
