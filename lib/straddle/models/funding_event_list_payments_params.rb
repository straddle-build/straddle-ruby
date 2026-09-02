# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::FundingEvents#list_payments
    class FundingEventListPaymentsParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute default_page_size
      #   Default number of results returned per page.
      #
      #   @return [Integer, nil]
      optional :default_page_size, Integer

      # @!attribute default_sort
      #   Default field used to sort the results.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListPaymentsParams::DefaultSort, nil]
      optional :default_sort, enum: -> { Straddle::FundingEventListPaymentsParams::DefaultSort }

      # @!attribute default_sort_order
      #   Default order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder, nil]
      optional :default_sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute include_metadata
      #   When `true`, includes each payment's metadata. Defaults to `false`.
      #
      #   @return [Boolean, nil]
      optional :include_metadata, Straddle::Internal::Type::Boolean

      # @!attribute page_number
      #   Results page number. Starts at 1. Defaults to 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page. Maximum 1,000. Defaults to 100.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort_by
      #   Field used to sort the results.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListPaymentsParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::FundingEventListPaymentsParams::SortBy }

      # @!attribute sort_order
      #   Order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #   For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(id:, default_page_size: nil, default_sort: nil, default_sort_order: nil, include_metadata: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param id [String]
      #
      #   @param default_page_size [Integer] Default number of results returned per page.
      #
      #   @param default_sort [Symbol, Straddle::Models::FundingEventListPaymentsParams::DefaultSort] Default field used to sort the results.
      #
      #   @param default_sort_order [Symbol, Straddle::Models::SortOrder] Default order in which to sort the results.
      #
      #   @param include_metadata [Boolean] When `true`, includes each payment's metadata. Defaults to `false`.
      #
      #   @param page_number [Integer] Results page number. Starts at 1. Defaults to 1.
      #
      #   @param page_size [Integer] Number of results per page. Maximum 1,000. Defaults to 100.
      #
      #   @param sort_by [Symbol, Straddle::Models::FundingEventListPaymentsParams::SortBy] Field used to sort the results.
      #
      #   @param sort_order [Symbol, Straddle::Models::SortOrder] Order in which to sort the results.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module DefaultSort
        extend Straddle::Internal::Type::Enum

        CREATED_AT = :created_at
        PAYMENT_DATE = :payment_date
        EFFECTIVE_AT = :effective_at
        ID = :id

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        CREATED_AT = :created_at
        PAYMENT_DATE = :payment_date
        EFFECTIVE_AT = :effective_at
        ID = :id

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
