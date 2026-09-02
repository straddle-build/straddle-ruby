# typed: strong

module Straddle
  module Resources
    # Representatives are people associated with a business account for ownership,
    # control, or authorization purposes.
    class Representatives
      # Creates a representative for an account and returns the representative.
      # Relationship fields identify primary representatives, control persons, and
      # owners.
      sig do
        params(
          account_id: String,
          dob: Date,
          email: String,
          first_name: String,
          last_name: String,
          mobile_number: String,
          relationship: Straddle::RepresentativeRelationship::OrHash,
          ssn_last4: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::RepresentativeResponse)
      end
      def create(
        # Body param: ID of the account associated with the representative.
        account_id:,
        # Body param: Representative's date of birth in `YYYY-MM-DD` format.
        dob:,
        # Body param: Representative's company email address.
        email:,
        # Body param: Representative's first name.
        first_name:,
        # Body param: Representative's last name.
        last_name:,
        # Body param: Representative's mobile phone number in E.164 format.
        mobile_number:,
        # Body param
        relationship:,
        # Body param: Last four digits of the representative's Social Security number.
        ssn_last4:,
        # Body param: Your unique ID for the representative.
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

      # Returns the representative with the specified ID.
      sig do
        params(
          representative_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::RepresentativeResponse)
      end
      def retrieve(
        # The ID of the representative.
        representative_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Updates a representative's personal, contact, relationship, external ID, and
      # metadata fields, then returns the representative.
      sig do
        params(
          representative_id: String,
          dob: Date,
          email: String,
          first_name: String,
          last_name: String,
          mobile_number: String,
          relationship: Straddle::RepresentativeRelationship::OrHash,
          ssn_last4: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::RepresentativeResponse)
      end
      def update(
        # Path param: The ID of the representative.
        representative_id,
        # Body param: Representative's date of birth in `YYYY-MM-DD` format.
        dob:,
        # Body param: Representative's email address.
        email:,
        # Body param: Representative's first name.
        first_name:,
        # Body param: Representative's last name.
        last_name:,
        # Body param: Representative's mobile phone number in E.164 format.
        mobile_number:,
        # Body param
        relationship:,
        # Body param: Last four digits of the representative's Social Security number.
        ssn_last4:,
        # Body param: Your unique ID for the representative.
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

      # Returns a paginated list of representatives. Filter the list by account,
      # organization, platform, or scope.
      sig do
        params(
          account_id: String,
          level: Straddle::RepresentativeListParams::Level::OrSymbol,
          organization_id: String,
          page_number: Integer,
          page_size: Integer,
          platform_id: String,
          sort_by: String,
          sort_order: Straddle::RepresentativeListParams::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::RepresentativeList)
      end
      def list(
        # Query param: Account ID used to filter the results.
        account_id: nil,
        # Query param: Scope of representatives to return.
        level: nil,
        # Query param: Organization ID used to filter the results.
        organization_id: nil,
        # Query param: Page number. Defaults to `1`.
        page_number: nil,
        # Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Query param: Platform ID used to filter the results.
        platform_id: nil,
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

      # Returns the representative with the specified ID without masking sensitive
      # fields. This endpoint requires an administrator role.
      sig do
        params(
          representative_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::UnmaskedRepresentativeResponse)
      end
      def list_unmasked(
        # The ID of the representative.
        representative_id,
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
