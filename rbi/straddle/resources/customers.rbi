# typed: strong

module Straddle
  module Resources
    # Customers are individuals or businesses that send or receive payments through
    # your integration.
    class Customers
      # Customers are individuals or businesses that send or receive payments through
      # your integration.
      sig { returns(Straddle::Resources::Customers::Review) }
      attr_reader :review

      # Creates a customer and starts identity, fraud, and risk assessments.
      sig do
        params(
          device: Straddle::CustomerDevice::OrHash,
          email: String,
          name: String,
          phone: String,
          type: Straddle::CustomerType::OrSymbol,
          address: T.nilable(Straddle::CustomerAddress::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          config: Straddle::CustomerConfiguration::OrHash,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerResponse)
      end
      def create(
        # Body param
        device:,
        # Body param: Customer email address.
        email:,
        # Body param: Full name for an individual customer or business name for a business
        # customer.
        name:,
        # Body param: Customer phone number in E.164 format. A mobile number is preferred.
        phone:,
        # Body param
        type:,
        # Body param: Customer postal address. When provided, the object must include all
        # required fields.
        address: nil,
        # Body param: Customer compliance profile. When provided, the object must include
        # all fields required for the customer type.
        compliance_profile: nil,
        # Body param
        config: nil,
        # Body param: Unique identifier for the customer in your system.
        external_id: nil,
        # Body param: Up to 20 user-defined key-value pairs associated with the customer.
        metadata: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        # Header param: For platform requests, the embedded account UUID that sets the
        # request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Returns a customer by `id`.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerResponse)
      end
      def retrieve(
        # Unique identifier for the customer.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Updates an existing customer's profile, status, and metadata.
      sig do
        params(
          id: String,
          device: Straddle::CustomerDevice::OrHash,
          email: String,
          name: String,
          phone: String,
          status: Straddle::CustomerStatus::OrSymbol,
          address: T.nilable(Straddle::CustomerAddress::OrHash),
          compliance_profile:
            T.nilable(
              T.any(
                Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile::OrHash,
                Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile::OrHash
              )
            ),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerResponse)
      end
      def update(
        # Path param: Unique identifier for the customer.
        id,
        # Body param
        device:,
        # Body param: Customer email address.
        email:,
        # Body param: Full name for an individual customer or business name for a business
        # customer.
        name:,
        # Body param: Customer phone number in E.164 format.
        phone:,
        # Body param
        status:,
        # Body param: Customer postal address. When provided, the object must include all
        # required fields.
        address: nil,
        # Body param
        compliance_profile: nil,
        # Body param: Unique identifier for the customer in your system.
        external_id: nil,
        # Body param: Up to 20 user-defined key-value pairs associated with the customer.
        metadata: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        # Header param: For platform requests, the embedded account UUID that sets the
        # request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of customers for the account. Optional query parameters
      # filter, search, and sort the results.
      sig do
        params(
          created_from: Time,
          created_to: Time,
          email: String,
          external_id: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: Straddle::CustomerListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          status: T::Array[Straddle::CustomerStatus::OrSymbol],
          types: T::Array[Straddle::CustomerType::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerSummaryList)
      end
      def list(
        # Query param: Start date for filtering by `created_at` date.
        created_from: nil,
        # Query param: End date for filtering by `created_at` date.
        created_to: nil,
        # Query param: Filter customers by `email` address.
        email: nil,
        # Query param: Filter by your system's `external_id`.
        external_id: nil,
        # Query param: Filter customers by `name` (partial match).
        name: nil,
        # Query param: Page number for paginated results. Starts at 1.
        page_number: nil,
        # Query param: Number of results per page. Maximum: 1000.
        page_size: nil,
        # Query param: General search term to filter customers.
        search_text: nil,
        # Query param: Field used to sort the results.
        sort_by: nil,
        # Query param: Order in which to sort the results.
        sort_order: nil,
        # Query param: Filter customers by their current `status`.
        status: nil,
        # Query param: Filter by customer type `individual` or `business`.
        types: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        # Header param: For platform requests, the embedded account UUID that sets the
        # request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Permanently deletes a customer record. The deletion cannot be undone. Use this
      # endpoint only to meet regulatory or privacy requirements.
      sig do
        params(
          id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerResponse)
      end
      def delete(
        # Unique identifier for the customer.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Returns unmasked details for a customer, including personally identifiable
      # information. Straddle must enable this endpoint for your account. Use this
      # endpoint only when unmasked data is necessary.
      sig do
        params(
          id: String,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedCustomerResponse)
      end
      def list_unmasked(
        # Unique identifier for the customer.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      # Starts a new identity review for a customer. The review runs asynchronously.
      # Webhooks and the customer review endpoint return updated results.
      sig do
        params(
          id: String,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CustomerResponse)
      end
      def refresh_review(
        # Unique identifier for the customer.
        id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
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
