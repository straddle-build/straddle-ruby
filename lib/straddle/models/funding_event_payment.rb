# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventPayment < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this payment.
      #
      #   @return [String]
      required :id, String

      # @!attribute currency
      #   Three-letter ISO 4217 currency code.
      #
      #   @return [String]
      required :currency, String

      # @!attribute external_id
      #   Your unique identifier for this payment, used to correlate with your internal
      #   records.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute funding_amount
      #   Portion of the payment amount included in this funding event, in the smallest
      #   currency unit.
      #
      #   @return [Integer]
      required :funding_amount, Integer

      # @!attribute payment_amount
      #   Total payment amount in the smallest currency unit (e.g. 1000 = $10.00 USD).
      #
      #   @return [Integer]
      required :payment_amount, Integer

      # @!attribute payment_date
      #   The date on which this payment was submitted for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute payment_type
      #   Whether this payment is a charge or payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentType]
      required :payment_type, enum: -> { Straddle::PaymentType }

      # @!attribute reason
      #   Reason this payment was included in the funding event.
      #
      #   @return [Symbol, Straddle::Models::FundingEventPaymentReason]
      required :reason, enum: -> { Straddle::FundingEventPaymentReason }

      # @!attribute status
      #   Current status of this payment.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus]
      required :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute trace_ids
      #   Network-level trace identifiers assigned during processing. Keys vary by payment
      #   rail.
      #
      #   @return [Hash{Symbol=>String}]
      required :trace_ids, Straddle::Internal::Type::HashOf[String]

      # @!attribute customer_details
      #   Details of the customer associated with this payment.
      #
      #   @return [Straddle::Models::CustomerDetails, nil]
      optional :customer_details, -> { Straddle::CustomerDetails }

      # @!attribute metadata
      #   Key-value metadata for this payment. Included only when `include_metadata` is
      #   `true`.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute paykey_details
      #   Details of the paykey used for this payment.
      #
      #   @return [Straddle::Models::PaykeyDetails, nil]
      optional :paykey_details, -> { Straddle::PaykeyDetails }

      # @!method initialize(id:, currency:, external_id:, funding_amount:, payment_amount:, payment_date:, payment_type:, reason:, status:, trace_ids:, customer_details: nil, metadata: nil, paykey_details: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEventPayment} for more details.
      #
      #   @param id [String] Unique identifier for this payment.
      #
      #   @param currency [String] Three-letter ISO 4217 currency code.
      #
      #   @param external_id [String] Your unique identifier for this payment, used to correlate with your internal re
      #
      #   @param funding_amount [Integer] Portion of the payment amount included in this funding event, in the smallest cu
      #
      #   @param payment_amount [Integer] Total payment amount in the smallest currency unit (e.g. 1000 = $10.00 USD).
      #
      #   @param payment_date [Date] The date on which this payment was submitted for processing.
      #
      #   @param payment_type [Symbol, Straddle::Models::PaymentType] Whether this payment is a charge or payout.
      #
      #   @param reason [Symbol, Straddle::Models::FundingEventPaymentReason] Reason this payment was included in the funding event.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] Current status of this payment.
      #
      #   @param trace_ids [Hash{Symbol=>String}] Network-level trace identifiers assigned during processing. Keys vary by payment
      #
      #   @param customer_details [Straddle::Models::CustomerDetails] Details of the customer associated with this payment.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Key-value metadata for this payment. Included only when `include_metadata` is `t
      #
      #   @param paykey_details [Straddle::Models::PaykeyDetails] Details of the paykey used for this payment.
    end
  end
end
