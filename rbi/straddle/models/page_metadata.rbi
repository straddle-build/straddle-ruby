# typed: strong

module Straddle
  module Models
    class PageMetadata < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PageMetadata, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the API request.
      sig { returns(String) }
      attr_accessor :api_request_id

      # UTC timestamp for the API request.
      sig { returns(Time) }
      attr_accessor :api_request_timestamp

      # Maximum page size allowed for this endpoint.
      sig { returns(Integer) }
      attr_accessor :max_page_size

      # Current page number.
      sig { returns(Integer) }
      attr_accessor :page_number

      # Number of items per page.
      sig { returns(Integer) }
      attr_accessor :page_size

      # Field used to sort the results.
      sig { returns(String) }
      attr_accessor :sort_by

      # Sort direction for the results.
      sig { returns(Straddle::SortOrder::TaggedSymbol) }
      attr_accessor :sort_order

      # Total number of items available across all pages.
      sig { returns(Integer) }
      attr_accessor :total_items

      # Total number of pages available.
      sig { returns(Integer) }
      attr_accessor :total_pages

      # Metadata for an API request and a page of results.
      sig do
        params(
          api_request_id: String,
          api_request_timestamp: Time,
          max_page_size: Integer,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order: Straddle::SortOrder::OrSymbol,
          total_items: Integer,
          total_pages: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the API request.
        api_request_id:,
        # UTC timestamp for the API request.
        api_request_timestamp:,
        # Maximum page size allowed for this endpoint.
        max_page_size:,
        # Current page number.
        page_number:,
        # Number of items per page.
        page_size:,
        # Field used to sort the results.
        sort_by:,
        # Sort direction for the results.
        sort_order:,
        # Total number of items available across all pages.
        total_items:,
        # Total number of pages available.
        total_pages:
      )
      end

      sig do
        override.returns(
          {
            api_request_id: String,
            api_request_timestamp: Time,
            max_page_size: Integer,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order: Straddle::SortOrder::TaggedSymbol,
            total_items: Integer,
            total_pages: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
