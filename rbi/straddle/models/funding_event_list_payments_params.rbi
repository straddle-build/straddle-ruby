# typed: strong

module Straddle
  module Models
    class FundingEventListPaymentsParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventListPaymentsParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Default number of results returned per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :default_page_size

      sig { params(default_page_size: Integer).void }
      attr_writer :default_page_size

      # Default field used to sort the results.
      sig do
        returns(
          T.nilable(
            Straddle::FundingEventListPaymentsParams::DefaultSort::OrSymbol
          )
        )
      end
      attr_reader :default_sort

      sig do
        params(
          default_sort:
            Straddle::FundingEventListPaymentsParams::DefaultSort::OrSymbol
        ).void
      end
      attr_writer :default_sort

      # Default order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :default_sort_order

      sig { params(default_sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :default_sort_order

      # When `true`, includes each payment's metadata. Defaults to `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_metadata

      sig { params(include_metadata: T::Boolean).void }
      attr_writer :include_metadata

      # Results page number. Starts at 1. Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page. Maximum 1,000. Defaults to 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Field used to sort the results.
      sig do
        returns(
          T.nilable(Straddle::FundingEventListPaymentsParams::SortBy::OrSymbol)
        )
      end
      attr_reader :sort_by

      sig do
        params(
          sort_by: Straddle::FundingEventListPaymentsParams::SortBy::OrSymbol
        ).void
      end
      attr_writer :sort_by

      # Order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :sort_order

      sig { params(sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :sort_order

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
          id: String,
          default_page_size: Integer,
          default_sort:
            Straddle::FundingEventListPaymentsParams::DefaultSort::OrSymbol,
          default_sort_order: Straddle::SortOrder::OrSymbol,
          include_metadata: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort_by: Straddle::FundingEventListPaymentsParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Default number of results returned per page.
        default_page_size: nil,
        # Default field used to sort the results.
        default_sort: nil,
        # Default order in which to sort the results.
        default_sort_order: nil,
        # When `true`, includes each payment's metadata. Defaults to `false`.
        include_metadata: nil,
        # Results page number. Starts at 1. Defaults to 1.
        page_number: nil,
        # Number of results per page. Maximum 1,000. Defaults to 100.
        page_size: nil,
        # Field used to sort the results.
        sort_by: nil,
        # Order in which to sort the results.
        sort_order: nil,
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
            id: String,
            default_page_size: Integer,
            default_sort:
              Straddle::FundingEventListPaymentsParams::DefaultSort::OrSymbol,
            default_sort_order: Straddle::SortOrder::OrSymbol,
            include_metadata: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            sort_by: Straddle::FundingEventListPaymentsParams::SortBy::OrSymbol,
            sort_order: Straddle::SortOrder::OrSymbol,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module DefaultSort
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListPaymentsParams::DefaultSort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Straddle::FundingEventListPaymentsParams::DefaultSort::TaggedSymbol
          )
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::FundingEventListPaymentsParams::DefaultSort::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::FundingEventListPaymentsParams::DefaultSort::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            Straddle::FundingEventListPaymentsParams::DefaultSort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventListPaymentsParams::DefaultSort::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListPaymentsParams::SortBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Straddle::FundingEventListPaymentsParams::SortBy::TaggedSymbol
          )
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::FundingEventListPaymentsParams::SortBy::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::FundingEventListPaymentsParams::SortBy::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            Straddle::FundingEventListPaymentsParams::SortBy::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::FundingEventListPaymentsParams::SortBy::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
