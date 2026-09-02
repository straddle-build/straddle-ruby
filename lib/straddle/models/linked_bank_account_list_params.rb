# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::LinkedBankAccounts#list
    class LinkedBankAccountListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Account ID used to filter the results.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute level
      #   Scope of linked bank accounts to return.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountListParams::Level, nil]
      optional :level, enum: -> { Straddle::LinkedBankAccountListParams::Level }

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

      # @!attribute purpose
      #   Linked bank account purpose. Accepted values are `charges`, `payouts`, and
      #   `billing`.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountListParams::Purpose, nil]
      optional :purpose, enum: -> { Straddle::LinkedBankAccountListParams::Purpose }

      # @!attribute sort_by
      #   Field used to sort results. Defaults to `id`.
      #
      #   @return [String, nil]
      optional :sort_by, String

      # @!attribute sort_order
      #   Sort direction. Defaults to `asc`.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::LinkedBankAccountListParams::SortOrder }

      # @!attribute status
      #   Linked bank account status. Accepted values are `created`, `onboarding`,
      #   `active`, `rejected`, `inactive`, and `canceled`.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountListParams::Status, nil]
      optional :status, enum: -> { Straddle::LinkedBankAccountListParams::Status }

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

      # @!method initialize(account_id: nil, level: nil, page_number: nil, page_size: nil, purpose: nil, sort_by: nil, sort_order: nil, status: nil, correlation_id: nil, request_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::LinkedBankAccountListParams} for more details.
      #
      #   @param account_id [String] Account ID used to filter the results.
      #
      #   @param level [Symbol, Straddle::Models::LinkedBankAccountListParams::Level] Scope of linked bank accounts to return.
      #
      #   @param page_number [Integer] Page number. Defaults to `1`.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to `100`. Maximum `1000`.
      #
      #   @param purpose [Symbol, Straddle::Models::LinkedBankAccountListParams::Purpose] Linked bank account purpose. Accepted values are `charges`, `payouts`, and `bill
      #
      #   @param sort_by [String] Field used to sort results. Defaults to `id`.
      #
      #   @param sort_order [Symbol, Straddle::Models::LinkedBankAccountListParams::SortOrder] Sort direction. Defaults to `asc`.
      #
      #   @param status [Symbol, Straddle::Models::LinkedBankAccountListParams::Status] Linked bank account status. Accepted values are `created`, `onboarding`, `active
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

      module Purpose
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts
        BILLING = :billing

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

        CREATED = :created
        ONBOARDING = :onboarding
        ACTIVE = :active
        REJECTED = :rejected
        INACTIVE = :inactive
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
