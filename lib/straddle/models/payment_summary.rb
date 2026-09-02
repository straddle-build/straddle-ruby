# frozen_string_literal: true

module Straddle
  module Models
    class PaymentSummary < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this charge or payout.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   Timestamp when the charge or payout was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency code. Only `USD` is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   Human-readable description of the payment.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute external_id
      #   Your unique identifier for the charge or payout.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute funding_ids
      #   IDs of the funding events that included this payment.
      #
      #   @return [Array<String>]
      required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

      # @!attribute has_refund
      #   Whether this payment is a charge refunded by an associated payout.
      #
      #   @return [Boolean]
      required :has_refund, Straddle::Internal::Type::Boolean

      # @!attribute has_resubmit
      #   Whether this payment has been resubmitted.
      #
      #   @return [Boolean]
      required :has_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute is_refund
      #   Whether this payment is a payout that refunds an original charge.
      #
      #   @return [Boolean]
      required :is_refund, Straddle::Internal::Type::Boolean

      # @!attribute is_resubmit
      #   Whether this payment resubmits an original payment.
      #
      #   @return [Boolean]
      required :is_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute paykey
      #   Masked paykey token used for the charge or payout.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   Date when Straddle submits the payment for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute payment_type
      #   Whether this payment is a charge or payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentType]
      required :payment_type, enum: -> { Straddle::PaymentType }

      # @!attribute status
      #   Current status of the charge or payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus]
      required :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute status_details
      #   Reason, source, and message for the most recent status change.
      #
      #   @return [Straddle::Models::PaymentStatusDetails]
      required :status_details, -> { Straddle::PaymentStatusDetails }

      # @!attribute trace_ids
      #   Network-level trace identifiers assigned during processing. Keys vary by payment
      #   rail.
      #
      #   @return [Hash{Symbol=>String}]
      required :trace_ids, Straddle::Internal::Type::HashOf[String]

      # @!attribute updated_at
      #   Timestamp when the charge or payout was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute customer_details
      #   Information about the customer associated with the charge or payout.
      #
      #   @return [Straddle::Models::CustomerDetails, nil]
      optional :customer_details, -> { Straddle::CustomerDetails }

      # @!attribute effective_at
      #   Timestamp when funds settled. Null until settlement is confirmed.
      #
      #   @return [Time, nil]
      optional :effective_at, Time, nil?: true

      # @!attribute funding_id
      #   Unique identifier for the funding event associated with the `charge` or
      #   `payout`.
      #
      #   @return [String, nil]
      optional :funding_id, String, nil?: true

      # @!attribute metadata
      #   Key-value metadata for the payment. Included only when `include_metadata` is
      #   true.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute paykey_details
      #   Details of the paykey used for the charge or payout.
      #
      #   @return [Straddle::Models::PaykeyDetails, nil]
      optional :paykey_details, -> { Straddle::PaykeyDetails }

      # @!attribute related_payments
      #   Related payments and their relationship to this charge or payout.
      #
      #   @return [Array<Straddle::Models::RelatedPayment>, nil]
      optional :related_payments,
               -> { Straddle::Internal::Type::ArrayOf[Straddle::RelatedPayment] },
               nil?: true

      # @!method initialize(id:, amount:, created_at:, currency:, description:, external_id:, funding_ids:, has_refund:, has_resubmit:, is_refund:, is_resubmit:, paykey:, payment_date:, payment_type:, status:, status_details:, trace_ids:, updated_at:, customer_details: nil, effective_at: nil, funding_id: nil, metadata: nil, paykey_details: nil, related_payments: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaymentSummary} for more details.
      #
      #   @param id [String] Unique identifier for this charge or payout.
      #
      #   @param amount [Integer] Amount in cents.
      #
      #   @param created_at [Time] Timestamp when the charge or payout was created.
      #
      #   @param currency [String] Currency code. Only `USD` is supported.
      #
      #   @param description [String, nil] Human-readable description of the payment.
      #
      #   @param external_id [String] Your unique identifier for the charge or payout.
      #
      #   @param funding_ids [Array<String>] IDs of the funding events that included this payment.
      #
      #   @param has_refund [Boolean] Whether this payment is a charge refunded by an associated payout.
      #
      #   @param has_resubmit [Boolean] Whether this payment has been resubmitted.
      #
      #   @param is_refund [Boolean] Whether this payment is a payout that refunds an original charge.
      #
      #   @param is_resubmit [Boolean] Whether this payment resubmits an original payment.
      #
      #   @param paykey [String] Masked paykey token used for the charge or payout.
      #
      #   @param payment_date [Date] Date when Straddle submits the payment for processing.
      #
      #   @param payment_type [Symbol, Straddle::Models::PaymentType] Whether this payment is a charge or payout.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] Current status of the charge or payout.
      #
      #   @param status_details [Straddle::Models::PaymentStatusDetails] Reason, source, and message for the most recent status change.
      #
      #   @param trace_ids [Hash{Symbol=>String}] Network-level trace identifiers assigned during processing. Keys vary by payment
      #
      #   @param updated_at [Time] Timestamp when the charge or payout was last updated.
      #
      #   @param customer_details [Straddle::Models::CustomerDetails] Information about the customer associated with the charge or payout.
      #
      #   @param effective_at [Time, nil] Timestamp when funds settled. Null until settlement is confirmed.
      #
      #   @param funding_id [String, nil] Unique identifier for the funding event associated with the `charge` or `payout`
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Key-value metadata for the payment. Included only when `include_metadata` is tru
      #
      #   @param paykey_details [Straddle::Models::PaykeyDetails] Details of the paykey used for the charge or payout.
      #
      #   @param related_payments [Array<Straddle::Models::RelatedPayment>, nil] Related payments and their relationship to this charge or payout.
    end
  end
end
