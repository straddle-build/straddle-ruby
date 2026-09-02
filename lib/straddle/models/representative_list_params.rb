# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Representatives#list
    class RepresentativeListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account ID used to filter the results.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute level
      #   Scope of representatives to return.
      #
      #   @return [Symbol, Straddle::Models::RepresentativeListParams::Level, nil]
      optional :level, enum: -> { Straddle::RepresentativeListParams::Level }

      # @!attribute organization_id
      #   Organization ID used to filter the results.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute page_number
      #   Page number. Defaults to `1`.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute platform_id
      #   Platform ID used to filter the results.
      #
      #   @return [String, nil]
      optional :platform_id, String

      # @!attribute sort_by
      #   Field used to sort results. Defaults to `id`.
      #
      #   @return [String, nil]
      optional :sort_by, String

      # @!attribute sort_order
      #   Sort direction. Defaults to `asc`.
      #
      #   @return [Symbol, Straddle::Models::RepresentativeListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::RepresentativeListParams::SortOrder }

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

      # @!method initialize(account_id: nil, level: nil, organization_id: nil, page_number: nil, page_size: nil, platform_id: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
      #   @param account_id [String] Account ID used to filter the results.
      #
      #   @param level [Symbol, Straddle::Models::RepresentativeListParams::Level] Scope of representatives to return.
      #
      #   @param organization_id [String] Organization ID used to filter the results.
      #
      #   @param page_number [Integer] Page number. Defaults to `1`.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @param platform_id [String] Platform ID used to filter the results.
      #
      #   @param sort_by [String] Field used to sort results. Defaults to `id`.
      #
      #   @param sort_order [Symbol, Straddle::Models::RepresentativeListParams::SortOrder] Sort direction. Defaults to `asc`.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module Level
        extend Straddle::Internal::Type::Enum

        ACCOUNT = :account
        PLATFORM = :platform

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
