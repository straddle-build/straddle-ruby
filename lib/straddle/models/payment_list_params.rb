# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payments#list
    class PaymentListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   Filter by the unique identifier of the customer.
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute default_page_size
      #   Default number of results returned per page.
      #
      #   @return [Integer, nil]
      optional :default_page_size, Integer

      # @!attribute default_sort
      #   Default field used to sort the results.
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::DefaultSort, nil]
      optional :default_sort, enum: -> { Straddle::PaymentListParams::DefaultSort }

      # @!attribute default_sort_order
      #   Default order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder, nil]
      optional :default_sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute external_id
      #   Filter by your external identifier for the payment.
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute funding_id
      #   Filter by the unique identifier of a funding event.
      #
      #   @return [String, nil]
      optional :funding_id, String

      # @!attribute has_refund
      #   Filter charges by whether an associated payout has refunded them.
      #
      #   @return [Boolean, nil]
      optional :has_refund, Straddle::Internal::Type::Boolean

      # @!attribute has_resubmit
      #   Filter payments by whether they have been resubmitted.
      #
      #   @return [Boolean, nil]
      optional :has_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute include_metadata
      #   Whether to include metadata in each returned payment. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_metadata, Straddle::Internal::Type::Boolean

      # @!attribute is_refund
      #   Filter payouts by whether they refund an original charge.
      #
      #   @return [Boolean, nil]
      optional :is_refund, Straddle::Internal::Type::Boolean

      # @!attribute is_resubmit
      #   Filter payments by whether they resubmit an original payment.
      #
      #   @return [Boolean, nil]
      optional :is_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute max_amount
      #   Filter to payments with an amount in cents less than or equal to this value.
      #
      #   @return [Integer, nil]
      optional :max_amount, Integer

      # @!attribute max_created_at
      #   Filter to payments created at or before this timestamp.
      #
      #   @return [Time, nil]
      optional :max_created_at, Time

      # @!attribute max_effective_at
      #   Filter to payments effective at or before this timestamp.
      #
      #   @return [Time, nil]
      optional :max_effective_at, Time

      # @!attribute max_payment_date
      #   Filter to payments with a payment date on or before this date.
      #
      #   @return [Date, nil]
      optional :max_payment_date, Date

      # @!attribute max_updated_at
      #   Filter to payments last updated on or before this timestamp.
      #
      #   @return [Time, nil]
      optional :max_updated_at, Time

      # @!attribute min_amount
      #   Filter to payments with an amount in cents greater than or equal to this value.
      #
      #   @return [Integer, nil]
      optional :min_amount, Integer

      # @!attribute min_created_at
      #   Filter to payments created at or after this timestamp.
      #
      #   @return [Time, nil]
      optional :min_created_at, Time

      # @!attribute min_effective_at
      #   Filter to payments effective at or after this timestamp.
      #
      #   @return [Time, nil]
      optional :min_effective_at, Time

      # @!attribute min_payment_date
      #   Filter to payments with a payment date on or after this date.
      #
      #   @return [Date, nil]
      optional :min_payment_date, Date

      # @!attribute min_updated_at
      #   Filter to payments last updated on or after this timestamp.
      #
      #   @return [Time, nil]
      optional :min_updated_at, Time

      # @!attribute page_number
      #   Page number to return.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results to return per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute paykey
      #   Filter by the paykey token.
      #
      #   @return [String, nil]
      optional :paykey, String

      # @!attribute paykey_id
      #   Filter by the unique identifier of the paykey.
      #
      #   @return [String, nil]
      optional :paykey_id, String

      # @!attribute payment_id
      #   Filter by the payment's unique identifier.
      #
      #   @return [String, nil]
      optional :payment_id, String

      # @!attribute payment_status
      #   Filter by payment status.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatus>, nil]
      optional :payment_status, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatus] }

      # @!attribute payment_type
      #   Filter by payment type.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentType>, nil]
      optional :payment_type, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentType] }

      # @!attribute search_text
      #   Free-text search across payment fields.
      #
      #   @return [String, nil]
      optional :search_text, String

      # @!attribute sort_by
      #   Field used to sort the results.
      #
      #   @return [Symbol, Straddle::Models::PaymentListParams::SortBy, nil]
      optional :sort_by, enum: -> { Straddle::PaymentListParams::SortBy }

      # @!attribute sort_order
      #   Order in which to sort the results.
      #
      #   @return [Symbol, Straddle::Models::SortOrder, nil]
      optional :sort_order, enum: -> { Straddle::SortOrder }

      # @!attribute status_reason
      #   Filter by the reason for the most recent payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatusReason>, nil]
      optional :status_reason, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatusReason] }

      # @!attribute status_source
      #   Filter by the source of the most recent payment status change.
      #
      #   @return [Array<Symbol, Straddle::Models::PaymentStatusSource>, nil]
      optional :status_source, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::PaymentStatusSource] }

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

      # @!method initialize(customer_id: nil, default_page_size: nil, default_sort: nil, default_sort_order: nil, external_id: nil, funding_id: nil, has_refund: nil, has_resubmit: nil, include_metadata: nil, is_refund: nil, is_resubmit: nil, max_amount: nil, max_created_at: nil, max_effective_at: nil, max_payment_date: nil, max_updated_at: nil, min_amount: nil, min_created_at: nil, min_effective_at: nil, min_payment_date: nil, min_updated_at: nil, page_number: nil, page_size: nil, paykey: nil, paykey_id: nil, payment_id: nil, payment_status: nil, payment_type: nil, search_text: nil, sort_by: nil, sort_order: nil, status_reason: nil, status_source: nil, correlation_id: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   @param customer_id [String] Filter by the unique identifier of the customer.
      #
      #   @param default_page_size [Integer] Default number of results returned per page.
      #
      #   @param default_sort [Symbol, Straddle::Models::PaymentListParams::DefaultSort] Default field used to sort the results.
      #
      #   @param default_sort_order [Symbol, Straddle::Models::SortOrder] Default order in which to sort the results.
      #
      #   @param external_id [String] Filter by your external identifier for the payment.
      #
      #   @param funding_id [String] Filter by the unique identifier of a funding event.
      #
      #   @param has_refund [Boolean] Filter charges by whether an associated payout has refunded them.
      #
      #   @param has_resubmit [Boolean] Filter payments by whether they have been resubmitted.
      #
      #   @param include_metadata [Boolean] Whether to include metadata in each returned payment. Defaults to false.
      #
      #   @param is_refund [Boolean] Filter payouts by whether they refund an original charge.
      #
      #   @param is_resubmit [Boolean] Filter payments by whether they resubmit an original payment.
      #
      #   @param max_amount [Integer] Filter to payments with an amount in cents less than or equal to this value.
      #
      #   @param max_created_at [Time] Filter to payments created at or before this timestamp.
      #
      #   @param max_effective_at [Time] Filter to payments effective at or before this timestamp.
      #
      #   @param max_payment_date [Date] Filter to payments with a payment date on or before this date.
      #
      #   @param max_updated_at [Time] Filter to payments last updated on or before this timestamp.
      #
      #   @param min_amount [Integer] Filter to payments with an amount in cents greater than or equal to this value.
      #
      #   @param min_created_at [Time] Filter to payments created at or after this timestamp.
      #
      #   @param min_effective_at [Time] Filter to payments effective at or after this timestamp.
      #
      #   @param min_payment_date [Date] Filter to payments with a payment date on or after this date.
      #
      #   @param min_updated_at [Time] Filter to payments last updated on or after this timestamp.
      #
      #   @param page_number [Integer] Page number to return.
      #
      #   @param page_size [Integer] Number of results to return per page.
      #
      #   @param paykey [String] Filter by the paykey token.
      #
      #   @param paykey_id [String] Filter by the unique identifier of the paykey.
      #
      #   @param payment_id [String] Filter by the payment's unique identifier.
      #
      #   @param payment_status [Array<Symbol, Straddle::Models::PaymentStatus>] Filter by payment status.
      #
      #   @param payment_type [Array<Symbol, Straddle::Models::PaymentType>] Filter by payment type.
      #
      #   @param search_text [String] Free-text search across payment fields.
      #
      #   @param sort_by [Symbol, Straddle::Models::PaymentListParams::SortBy] Field used to sort the results.
      #
      #   @param sort_order [Symbol, Straddle::Models::SortOrder] Order in which to sort the results.
      #
      #   @param status_reason [Array<Symbol, Straddle::Models::PaymentStatusReason>] Filter by the reason for the most recent payment status change.
      #
      #   @param status_source [Array<Symbol, Straddle::Models::PaymentStatusSource>] Filter by the source of the most recent payment status change.
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
        AMOUNT = :amount
        UPDATED_AT = :updated_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        CREATED_AT = :created_at
        PAYMENT_DATE = :payment_date
        EFFECTIVE_AT = :effective_at
        ID = :id
        AMOUNT = :amount
        UPDATED_AT = :updated_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
