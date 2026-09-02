# typed: strong

module Straddle
  module Models
    class CustomerListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerListParams, Straddle::Internal::AnyHash)
        end

      # Start date for filtering by `created_at` date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_from

      sig { params(created_from: Time).void }
      attr_writer :created_from

      # End date for filtering by `created_at` date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_to

      sig { params(created_to: Time).void }
      attr_writer :created_to

      # Filter customers by `email` address.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Filter by your system's `external_id`.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Filter customers by `name` (partial match).
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Page number for paginated results. Starts at 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page. Maximum: 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # General search term to filter customers.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      # Field used to sort the results.
      sig { returns(T.nilable(Straddle::CustomerListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::CustomerListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      # Order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :sort_order

      sig { params(sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :sort_order

      # Filter customers by their current `status`.
      sig { returns(T.nilable(T::Array[Straddle::CustomerStatus::OrSymbol])) }
      attr_reader :status

      sig { params(status: T::Array[Straddle::CustomerStatus::OrSymbol]).void }
      attr_writer :status

      # Filter by customer type `individual` or `business`.
      sig { returns(T.nilable(T::Array[Straddle::CustomerType::OrSymbol])) }
      attr_reader :types

      sig { params(types: T::Array[Straddle::CustomerType::OrSymbol]).void }
      attr_writer :types

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # For platform requests, the embedded account UUID that sets the request scope.
      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

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
        ).returns(T.attached_class)
      end
      def self.new(
        # Start date for filtering by `created_at` date.
        created_from: nil,
        # End date for filtering by `created_at` date.
        created_to: nil,
        # Filter customers by `email` address.
        email: nil,
        # Filter by your system's `external_id`.
        external_id: nil,
        # Filter customers by `name` (partial match).
        name: nil,
        # Page number for paginated results. Starts at 1.
        page_number: nil,
        # Number of results per page. Maximum: 1000.
        page_size: nil,
        # General search term to filter customers.
        search_text: nil,
        # Field used to sort the results.
        sort_by: nil,
        # Order in which to sort the results.
        sort_order: nil,
        # Filter customers by their current `status`.
        status: nil,
        # Filter by customer type `individual` or `business`.
        types: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
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
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CustomerListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME = T.let(:name, Straddle::CustomerListParams::SortBy::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Straddle::CustomerListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CustomerListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
