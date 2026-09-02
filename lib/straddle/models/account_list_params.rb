# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#list
    class AccountListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute external_id
      #   Your external ID for the account.
      #
      #   @return [String, nil]
      optional :external_id, String

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

      # @!attribute search_text
      #   Text to search for across account fields.
      #
      #   @return [String, nil]
      optional :search_text, String

      # @!attribute sort_by
      #   Field used to sort results. Defaults to `id`.
      #
      #   @return [String, nil]
      optional :sort_by, String

      # @!attribute sort_order
      #   Sort direction. Defaults to `asc`.
      #
      #   @return [Symbol, Straddle::Models::AccountListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::AccountListParams::SortOrder }

      # @!attribute status
      #   Account status to return.
      #
      #   @return [Symbol, Straddle::Models::AccountListParams::Status, nil]
      optional :status, enum: -> { Straddle::AccountListParams::Status }

      # @!attribute type
      #   Account type to return.
      #
      #   @return [Symbol, Straddle::Models::AccountListParams::Type, nil]
      optional :type, enum: -> { Straddle::AccountListParams::Type }

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

      # @!method initialize(external_id: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, type: nil, correlation_id: nil, request_id: nil, request_options: {})
      #   @param external_id [String] Your external ID for the account.
      #
      #   @param page_number [Integer] Page number. Defaults to `1`.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @param search_text [String] Text to search for across account fields.
      #
      #   @param sort_by [String] Field used to sort results. Defaults to `id`.
      #
      #   @param sort_order [Symbol, Straddle::Models::AccountListParams::SortOrder] Sort direction. Defaults to `asc`.
      #
      #   @param status [Symbol, Straddle::Models::AccountListParams::Status] Account status to return.
      #
      #   @param type [Symbol, Straddle::Models::AccountListParams::Type] Account type to return.
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

      module Status
        extend Straddle::Internal::Type::Enum

        CREATED = :created
        ONBOARDING = :onboarding
        ACTIVE = :active
        REJECTED = :rejected
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Type
        extend Straddle::Internal::Type::Enum

        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
