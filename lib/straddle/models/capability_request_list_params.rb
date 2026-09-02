# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::CapabilityRequests#list
    class CapabilityRequestListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute category
      #   Capability category to return.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequestListParams::Category, nil]
      optional :category, enum: -> { Straddle::CapabilityRequestListParams::Category }

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
      #   @return [Symbol, Straddle::Models::CapabilityRequestListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::CapabilityRequestListParams::SortOrder }

      # @!attribute status
      #   Capability request status to return.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequestListParams::Status, nil]
      optional :status, enum: -> { Straddle::CapabilityRequestListParams::Status }

      # @!attribute type
      #   Capability type to return.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequestListParams::Type, nil]
      optional :type, enum: -> { Straddle::CapabilityRequestListParams::Type }

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

      # @!method initialize(account_id:, category: nil, page_number: nil, page_size: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param category [Symbol, Straddle::Models::CapabilityRequestListParams::Category] Capability category to return.
      #
      #   @param page_number [Integer] Page number. Defaults to `1`.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @param sort_by [String] Field used to sort results. Defaults to `id`.
      #
      #   @param sort_order [Symbol, Straddle::Models::CapabilityRequestListParams::SortOrder] Sort direction. Defaults to `asc`.
      #
      #   @param status [Symbol, Straddle::Models::CapabilityRequestListParams::Status] Capability request status to return.
      #
      #   @param type [Symbol, Straddle::Models::CapabilityRequestListParams::Type] Capability type to return.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module Category
        extend Straddle::Internal::Type::Enum

        PAYMENT_TYPE = :payment_type
        CUSTOMER_TYPE = :customer_type
        CONSENT_TYPE = :consent_type

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

      module Status
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Type
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts
        INDIVIDUALS = :individuals
        BUSINESSES = :businesses
        SIGNED_AGREEMENT = :signed_agreement
        INTERNET = :internet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
