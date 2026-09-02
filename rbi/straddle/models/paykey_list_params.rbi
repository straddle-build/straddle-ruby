# typed: strong

module Straddle
  module Models
    class PaykeyListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyListParams, Straddle::Internal::AnyHash)
        end

      # Start date for filtering by creation date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_from

      sig { params(created_from: Time).void }
      attr_writer :created_from

      # End date for filtering by creation date.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_to

      sig { params(created_to: Time).void }
      attr_writer :created_to

      # Filter paykeys by related customer ID.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

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

      # General search term to filter paykeys.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      # Field used to sort the results.
      sig { returns(T.nilable(Straddle::PaykeyListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig { params(sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol).void }
      attr_writer :sort_by

      # Order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :sort_order

      sig { params(sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :sort_order

      # Filter paykeys by their source.
      sig { returns(T.nilable(T::Array[Straddle::PaykeySource::OrSymbol])) }
      attr_reader :source

      sig { params(source: T::Array[Straddle::PaykeySource::OrSymbol]).void }
      attr_writer :source

      # Filter paykeys by their current status.
      sig { returns(T.nilable(T::Array[Straddle::PaykeyStatus::OrSymbol])) }
      attr_reader :status

      sig { params(status: T::Array[Straddle::PaykeyStatus::OrSymbol]).void }
      attr_writer :status

      # Filters paykeys by unblock eligibility. `true` returns blocked paykeys that are
      # eligible because of an `R29` return and have not been unblocked before. `false`
      # returns blocked paykeys that are not eligible.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :unblock_eligible

      sig { params(unblock_eligible: T::Boolean).void }
      attr_writer :unblock_eligible

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
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          source: T::Array[Straddle::PaykeySource::OrSymbol],
          status: T::Array[Straddle::PaykeyStatus::OrSymbol],
          unblock_eligible: T::Boolean,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Start date for filtering by creation date.
        created_from: nil,
        # End date for filtering by creation date.
        created_to: nil,
        # Filter paykeys by related customer ID.
        customer_id: nil,
        # Page number for paginated results. Starts at 1.
        page_number: nil,
        # Number of results per page. Maximum: 1000.
        page_size: nil,
        # General search term to filter paykeys.
        search_text: nil,
        # Field used to sort the results.
        sort_by: nil,
        # Order in which to sort the results.
        sort_order: nil,
        # Filter paykeys by their source.
        source: nil,
        # Filter paykeys by their current status.
        status: nil,
        # Filters paykeys by unblock eligibility. `true` returns blocked paykeys that are
        # eligible because of an `R29` return and have not been unblocked before. `false`
        # returns blocked paykeys that are not eligible.
        unblock_eligible: nil,
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
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            search_text: String,
            sort_by: Straddle::PaykeyListParams::SortBy::OrSymbol,
            sort_order: Straddle::SortOrder::OrSymbol,
            source: T::Array[Straddle::PaykeySource::OrSymbol],
            status: T::Array[Straddle::PaykeyStatus::OrSymbol],
            unblock_eligible: T::Boolean,
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
          T.type_alias { T.all(Symbol, Straddle::PaykeyListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSTITUTION_NAME =
          T.let(
            :institution_name,
            Straddle::PaykeyListParams::SortBy::TaggedSymbol
          )
        EXPIRES_AT =
          T.let(:expires_at, Straddle::PaykeyListParams::SortBy::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Straddle::PaykeyListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaykeyListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
