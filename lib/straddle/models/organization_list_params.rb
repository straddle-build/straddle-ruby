# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Organizations#list
    class OrganizationListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute external_id
      #   Your external ID for the organization.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute name
      #   Organization name. Supports partial matches.
      #
      #   @return [String, nil]
      optional :name, String

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

      # @!attribute sort_by
      #   Field used to sort results. Defaults to `id`.
      #
      #   @return [String, nil]
      optional :sort_by, String

      # @!attribute sort_order
      #   Sort direction. Defaults to `asc`.
      #
      #   @return [Symbol, Straddle::Models::OrganizationListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::OrganizationListParams::SortOrder }

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

      # @!method initialize(external_id: nil, name: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, correlation_id: nil, request_id: nil, request_options: {})
      #   @param external_id [String] Your external ID for the organization.
      #
      #   @param name [String] Organization name. Supports partial matches.
      #
      #   @param page_number [Integer] Page number. Defaults to `1`.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @param sort_by [String] Field used to sort results. Defaults to `id`.
      #
      #   @param sort_order [Symbol, Straddle::Models::OrganizationListParams::SortOrder] Sort direction. Defaults to `asc`.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

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
