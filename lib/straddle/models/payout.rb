# frozen_string_literal: true

module Straddle
  module Models
    class Payout < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this payout.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute config
      #   Configuration for the payout.
      #
      #   @return [Straddle::Models::PayoutConfiguration]
      required :config, -> { Straddle::PayoutConfiguration }

      # @!attribute currency
      #   Currency code. Only `USD` is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   A human-readable description of the payout.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute device
      #   Device used when the customer authorized the payout.
      #
      #   @return [Straddle::Models::MaskedPaymentDevice]
      required :device, -> { Straddle::MaskedPaymentDevice }

      # @!attribute external_id
      #   Your unique identifier for this payout, used to correlate with your internal
      #   records.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute funding_ids
      #   IDs of the funding events that included this payout.
      #
      #   @return [Array<String>]
      required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

      # @!attribute has_resubmit
      #   Whether this payout has been resubmitted.
      #
      #   @return [Boolean]
      required :has_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute is_refund
      #   Whether this payout refunds an original charge.
      #
      #   @return [Boolean]
      required :is_refund, Straddle::Internal::Type::Boolean

      # @!attribute is_resubmit
      #   Whether this payout resubmits an original payout.
      #
      #   @return [Boolean]
      required :is_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute paykey
      #   The masked paykey token used for this payout.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   Date when Straddle submits the payout for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute status
      #   The current status of the payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus]
      required :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute status_details
      #   Reason, source, and message for the most recent payout status change.
      #
      #   @return [Straddle::Models::PaymentStatusDetails]
      required :status_details, -> { Straddle::PaymentStatusDetails }

      # @!attribute status_history
      #   Complete ordered history of all status changes for this payout.
      #
      #   @return [Array<Straddle::Models::PaymentStatusHistory>]
      required :status_history, -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentStatusHistory] }

      # @!attribute trace_ids
      #   Trace identifiers from the payment network. Keys depend on the payment rail.
      #
      #   @return [Hash{Symbol=>String}]
      required :trace_ids, Straddle::Internal::Type::HashOf[String]

      # @!attribute created_at
      #   Timestamp when this payout was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute customer_details
      #   Information about the customer associated with the payout.
      #
      #   @return [Straddle::Models::CustomerDetails, nil]
      optional :customer_details, -> { Straddle::CustomerDetails }

      # @!attribute documents
      #   Authorization documents for this payout, ordered by upload time.
      #
      #   @return [Array<Straddle::Models::PaymentAuthorizationProof>, nil]
      optional :documents,
               -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentAuthorizationProof] },
               nil?: true

      # @!attribute effective_at
      #   Timestamp when funds were settled. Null until settlement is confirmed.
      #
      #   @return [Time, nil]
      optional :effective_at, Time, nil?: true

      # @!attribute metadata
      #   Key-value metadata stored with this payout.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute paykey_details
      #   Information about the paykey used for the payout.
      #
      #   @return [Straddle::Models::PaykeyDetails, nil]
      optional :paykey_details, -> { Straddle::PaykeyDetails }

      # @!attribute payment_rail
      #   Payment rail used to process the payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentRail, nil]
      optional :payment_rail, enum: -> { Straddle::PaymentRail }

      # @!attribute processed_at
      #   Timestamp when this payout was submitted to the payment network. Null until
      #   processed.
      #
      #   @return [Time, nil]
      optional :processed_at, Time, nil?: true

      # @!attribute related_payments
      #   Related payments and their relationship to this payout.
      #
      #   @return [Array<Straddle::Models::RelatedPayment>, nil]
      optional :related_payments,
               -> { Straddle::Internal::Type::ArrayOf[Straddle::RelatedPayment] },
               nil?: true

      # @!attribute updated_at
      #   Timestamp when this payout was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(id:, amount:, config:, currency:, description:, device:, external_id:, funding_ids:, has_resubmit:, is_refund:, is_resubmit:, paykey:, payment_date:, status:, status_details:, status_history:, trace_ids:, created_at: nil, customer_details: nil, documents: nil, effective_at: nil, metadata: nil, paykey_details: nil, payment_rail: nil, processed_at: nil, related_payments: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see {Straddle::Models::Payout}
      #   for more details.
      #
      #   @param id [String] Unique identifier for this payout.
      #
      #   @param amount [Integer] Amount in cents.
      #
      #   @param config [Straddle::Models::PayoutConfiguration] Configuration for the payout.
      #
      #   @param currency [String] Currency code. Only `USD` is supported.
      #
      #   @param description [String, nil] A human-readable description of the payout.
      #
      #   @param device [Straddle::Models::MaskedPaymentDevice] Device used when the customer authorized the payout.
      #
      #   @param external_id [String] Your unique identifier for this payout, used to correlate with your internal rec
      #
      #   @param funding_ids [Array<String>] IDs of the funding events that included this payout.
      #
      #   @param has_resubmit [Boolean] Whether this payout has been resubmitted.
      #
      #   @param is_refund [Boolean] Whether this payout refunds an original charge.
      #
      #   @param is_resubmit [Boolean] Whether this payout resubmits an original payout.
      #
      #   @param paykey [String] The masked paykey token used for this payout.
      #
      #   @param payment_date [Date] Date when Straddle submits the payout for processing.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] The current status of the payout.
      #
      #   @param status_details [Straddle::Models::PaymentStatusDetails] Reason, source, and message for the most recent payout status change.
      #
      #   @param status_history [Array<Straddle::Models::PaymentStatusHistory>] Complete ordered history of all status changes for this payout.
      #
      #   @param trace_ids [Hash{Symbol=>String}] Trace identifiers from the payment network. Keys depend on the payment rail.
      #
      #   @param created_at [Time, nil] Timestamp when this payout was created.
      #
      #   @param customer_details [Straddle::Models::CustomerDetails] Information about the customer associated with the payout.
      #
      #   @param documents [Array<Straddle::Models::PaymentAuthorizationProof>, nil] Authorization documents for this payout, ordered by upload time.
      #
      #   @param effective_at [Time, nil] Timestamp when funds were settled. Null until settlement is confirmed.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Key-value metadata stored with this payout.
      #
      #   @param paykey_details [Straddle::Models::PaykeyDetails] Information about the paykey used for the payout.
      #
      #   @param payment_rail [Symbol, Straddle::Models::PaymentRail] Payment rail used to process the payout.
      #
      #   @param processed_at [Time, nil] Timestamp when this payout was submitted to the payment network. Null until proc
      #
      #   @param related_payments [Array<Straddle::Models::RelatedPayment>, nil] Related payments and their relationship to this payout.
      #
      #   @param updated_at [Time, nil] Timestamp when this payout was last updated.
    end
  end
end
