# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::FundingEvents#list
    class FundingEventListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute created_from
      #   Filter to funding events created on or after this date.
      #
      #   @return [Date, nil]
      optional :created_from, Date, nil?: true

      # @!attribute created_to
      #   Filter to funding events created on or before this date.
      #
      #   @return [Date, nil]
      optional :created_to, Date, nil?: true

      # @!attribute direction
      #   Filter by transfer direction relative to the linked bank account.
      #
      #   @return [Symbol, Straddle::Models::TransferDirection, nil]
      optional :direction, enum: -> { Straddle::TransferDirection }

      # @!attribute event_type
      #   Filter by funding event type.
      #
      #   @return [Symbol, Straddle::Models::FundingEventType, nil]
      optional :event_type, enum: -> { Straddle::FundingEventType }

      # @!attribute page_number
      #   Results page number. Starts at page 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Results page size. Max value: 1000.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute search_text
      #   Free-text search across funding event fields.
      #
      #   @return [String, nil]
      optional :search_text, String, nil?: true

      # @!attribute sort_by
      #   Field used to sort the results.
      #
      #   @return [Symbol, Straddle::Models::FundingEventListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::FundingEventListParams::SortBy }

      # @!attribute sort_order
      #   Order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute status
      #   Filter by funding event status.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatus>, nil]
      optional :status, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatus] }, nil?: true

      # @!attribute status_reason
      #   Filter by the reason for the most recent status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatusReason>, nil]
      optional :status_reason,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatusReason] },
               nil?: true

      # @!attribute status_source
      #   Filter by the source of the most recent status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatusSource>, nil]
      optional :status_source,
               -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatusSource] },
               nil?: true

      # @!attribute trace_id
      #   Filter by a network-level trace identifier assigned during processing.
      #
      #   @return [String, nil]
      optional :trace_id, String, nil?: true

      # @!attribute trace_number
      #   Filter by a network trace number assigned during processing.
      #
      #   @return [String, nil]
      optional :trace_number, String, nil?: true

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

      # @!method initialize(created_from: nil, created_to: nil, direction: nil, event_type: nil, page_number: nil, page_size: nil, search_text: nil, sort_by: nil, sort_order: nil, status: nil, status_reason: nil, status_source: nil, trace_id: nil, trace_number: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param created_from [Date, nil] Filter to funding events created on or after this date.
      #
      #   @param created_to [Date, nil] Filter to funding events created on or before this date.
      #
      #   @param direction [Symbol, Straddle::Models::TransferDirection] Filter by transfer direction relative to the linked bank account.
      #
      #   @param event_type [Symbol, Straddle::Models::FundingEventType] Filter by funding event type.
      #
      #   @param page_number [Integer] Results page number. Starts at page 1.
      #
      #   @param page_size [Integer] Results page size. Max value: 1000.
      #
      #   @param search_text [String, nil] Free-text search across funding event fields.
      #
      #   @param sort_by [Symbol, Straddle::Models::FundingEventListParams::SortBy] Field used to sort the results.
      #
      #   @param sort_order [Symbol, Straddle::Models::SortOrder] Order in which to sort the results.
      #
      #   @param status [Array<Symbol, Straddle::Models::PaymentStatus>, nil] Filter by funding event status.
      #
      #   @param status_reason [Array<Symbol, Straddle::Models::PaymentStatusReason>, nil] Filter by the reason for the most recent status change.
      #
      #   @param status_source [Array<Symbol, Straddle::Models::PaymentStatusSource>, nil] Filter by the source of the most recent status change.
      #
      #   @param trace_id [String, nil] Filter by a network-level trace identifier assigned during processing.
      #
      #   @param trace_number [String, nil] Filter by a network trace number assigned during processing.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      module SortBy
        extend Straddle::Internal::Type::Enum

        TRANSFER_DATE = :transfer_date
        ID = :id
        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
