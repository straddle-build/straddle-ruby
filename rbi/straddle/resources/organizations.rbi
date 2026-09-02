# typed: strong

module Straddle
  module Resources
    # Organizations group related Straddle accounts.
    class Organizations
      # Creates an organization for your platform and returns it. Organizations group
      # related accounts and users.
      sig do
        params(
          name: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::OrganizationResponse)
      end
      def create(
        # Body param: Organization name.
        name:,
        # Body param: Your unique ID for the organization.
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

      # Returns the organization with the specified ID.
      sig do
        params(
          organization_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::OrganizationResponse)
      end
      def retrieve(
        # The ID of the organization.
        organization_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of organizations for your platform. Filter the list by
      # name or external ID.
      sig do
        params(
          external_id: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order: Straddle::OrganizationListParams::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::OrganizationList)
      end
      def list(
        # Query param: Your external ID for the organization.
        external_id: nil,
        # Query param: Organization name. Supports partial matches.
        name: nil,
        # Query param: Page number. Defaults to `1`.
        page_number: nil,
        # Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Query param: Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Query param: Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
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
