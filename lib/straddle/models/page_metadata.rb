# frozen_string_literal: true

module Straddle
  module Models
    class PageMetadata < Straddle::Internal::Type::BaseModel
      # @!attribute api_request_id
      #   Unique identifier for the API request.
      #
      #   @return [String]
      required :api_request_id, String

      # @!attribute api_request_timestamp
      #   UTC timestamp for the API request.
      #
      #   @return [Time]
      required :api_request_timestamp, Time

      # @!attribute max_page_size
      #   Maximum page size allowed for this endpoint.
      #
      #   @return [Integer]
      required :max_page_size, Integer

      # @!attribute page_number
      #   Current page number.
      #
      #   @return [Integer]
      required :page_number, Integer

      # @!attribute page_size
      #   Number of items per page.
      #
      #   @return [Integer]
      required :page_size, Integer

      # @!attribute sort_by
      #   Field used to sort the results.
      #
      #   @return [String]
      required :sort_by, String

      # @!attribute sort_order
      #   Sort direction for the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder]
      required :sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute total_items
      #   Total number of items available across all pages.
      #
      #   @return [Integer]
      required :total_items, Integer

      # @!attribute total_pages
      #   Total number of pages available.
      #
      #   @return [Integer]
      required :total_pages, Integer

      # @!method initialize(api_request_id:, api_request_timestamp:, max_page_size:, page_number:, page_size:, sort_by:, sort_order:, total_items:, total_pages:)
      #   Metadata for an API request and a page of results.
      #
      #   @param api_request_id [String] Unique identifier for the API request.
      #
      #   @param api_request_timestamp [Time] UTC timestamp for the API request.
      #
      #   @param max_page_size [Integer] Maximum page size allowed for this endpoint.
      #
      #   @param page_number [Integer] Current page number.
      #
      #   @param page_size [Integer] Number of items per page.
      #
      #   @param sort_by [String] Field used to sort the results.
      #
      #   @param sort_order [Symbol, Straddle::Models::SortOrder] Sort direction for the results.
      #
      #   @param total_items [Integer] Total number of items available across all pages.
      #
      #   @param total_pages [Integer] Total number of pages available.
    end
  end
end
