# frozen_string_literal: true

module Straddle
  module Models
    class UnmaskedCharge < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this charge.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute config
      #
      #   @return [Straddle::Models::ChargeConfiguration]
      required :config, -> { Straddle::ChargeConfiguration }

      # @!attribute consent_type
      #   How the customer authorized the charge. `internet` covers online and mobile
      #   authorization. `signed` covers written or PDF-signed agreements.
      #
      #   @return [Symbol, Straddle::Models::ConsentType]
      required :consent_type, enum: -> { Straddle::ConsentType }

      # @!attribute created_at
      #   Timestamp when this charge was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Currency code. Only `USD` is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   A human-readable description of the charge.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute device
      #
      #   @return [Straddle::Models::PaymentDevice]
      required :device, -> { Straddle::PaymentDevice }

      # @!attribute external_id
      #   Your unique identifier for this charge, used to correlate with your internal
      #   records.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute funding_ids
      #   IDs of the funding events that included this charge.
      #
      #   @return [Array<String>]
      required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

      # @!attribute has_refund
      #   Whether an associated payout has refunded this charge.
      #
      #   @return [Boolean]
      required :has_refund, Straddle::Internal::Type::Boolean

      # @!attribute has_resubmit
      #   Whether this charge has been resubmitted.
      #
      #   @return [Boolean]
      required :has_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute is_resubmit
      #   Whether this charge resubmits an original charge.
      #
      #   @return [Boolean]
      required :is_resubmit, Straddle::Internal::Type::Boolean

      # @!attribute paykey
      #   Unmasked paykey token used for this charge.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   Date when Straddle submits the charge for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute status
      #   The current status of the `charge` or `payout`.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus]
      required :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute status_details
      #
      #   @return [Straddle::Models::PaymentStatusDetails]
      required :status_details, -> { Straddle::PaymentStatusDetails }

      # @!attribute status_history
      #   Complete ordered history of all status changes for this charge.
      #
      #   @return [Array<Straddle::Models::PaymentStatusHistory>]
      required :status_history, -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentStatusHistory] }

      # @!attribute trace_ids
      #   Trace identifiers from the payment network. Keys depend on the payment rail.
      #
      #   @return [Hash{Symbol=>String}]
      required :trace_ids, Straddle::Internal::Type::HashOf[String]

      # @!attribute updated_at
      #   Timestamp when this charge was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute customer_details
      #   Information about the customer associated with the charge or payout.
      #
      #   @return [Straddle::Models::CustomerDetails, nil]
      optional :customer_details, -> { Straddle::CustomerDetails }

      # @!attribute documents
      #   Authorization documents for this charge, ordered by upload time.
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
      #   Key-value metadata stored with this charge.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute paykey_details
      #
      #   @return [Straddle::Models::PaykeyDetails, nil]
      optional :paykey_details, -> { Straddle::PaykeyDetails }

      # @!attribute payment_rail
      #   The payment rail used for the charge or payout.
      #
      #   @return [Symbol, Straddle::Models::PaymentRail, nil]
      optional :payment_rail, enum: -> { Straddle::PaymentRail }

      # @!attribute processed_at
      #   Timestamp when this charge was submitted to the payment network. Null until
      #   processed.
      #
      #   @return [Time, nil]
      optional :processed_at, Time, nil?: true

      # @!attribute related_payments
      #   Related payments and their relationship to this charge.
      #
      #   @return [Array<Straddle::Models::RelatedPayment>, nil]
      optional :related_payments,
               -> { Straddle::Internal::Type::ArrayOf[Straddle::RelatedPayment] },
               nil?: true

      # @!method initialize(id:, amount:, config:, consent_type:, created_at:, currency:, description:, device:, external_id:, funding_ids:, has_refund:, has_resubmit:, is_resubmit:, paykey:, payment_date:, status:, status_details:, status_history:, trace_ids:, updated_at:, customer_details: nil, documents: nil, effective_at: nil, metadata: nil, paykey_details: nil, payment_rail: nil, processed_at: nil, related_payments: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::UnmaskedCharge} for more details.
      #
      #   @param id [String] Unique identifier for this charge.
      #
      #   @param amount [Integer] Amount in cents.
      #
      #   @param config [Straddle::Models::ChargeConfiguration]
      #
      #   @param consent_type [Symbol, Straddle::Models::ConsentType] How the customer authorized the charge. `internet` covers online and mobile auth
      #
      #   @param created_at [Time] Timestamp when this charge was created.
      #
      #   @param currency [String] Currency code. Only `USD` is supported.
      #
      #   @param description [String, nil] A human-readable description of the charge.
      #
      #   @param device [Straddle::Models::PaymentDevice]
      #
      #   @param external_id [String] Your unique identifier for this charge, used to correlate with your internal rec
      #
      #   @param funding_ids [Array<String>] IDs of the funding events that included this charge.
      #
      #   @param has_refund [Boolean] Whether an associated payout has refunded this charge.
      #
      #   @param has_resubmit [Boolean] Whether this charge has been resubmitted.
      #
      #   @param is_resubmit [Boolean] Whether this charge resubmits an original charge.
      #
      #   @param paykey [String] Unmasked paykey token used for this charge.
      #
      #   @param payment_date [Date] Date when Straddle submits the charge for processing.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] The current status of the `charge` or `payout`.
      #
      #   @param status_details [Straddle::Models::PaymentStatusDetails]
      #
      #   @param status_history [Array<Straddle::Models::PaymentStatusHistory>] Complete ordered history of all status changes for this charge.
      #
      #   @param trace_ids [Hash{Symbol=>String}] Trace identifiers from the payment network. Keys depend on the payment rail.
      #
      #   @param updated_at [Time] Timestamp when this charge was last updated.
      #
      #   @param customer_details [Straddle::Models::CustomerDetails] Information about the customer associated with the charge or payout.
      #
      #   @param documents [Array<Straddle::Models::PaymentAuthorizationProof>, nil] Authorization documents for this charge, ordered by upload time.
      #
      #   @param effective_at [Time, nil] Timestamp when funds were settled. Null until settlement is confirmed.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Key-value metadata stored with this charge.
      #
      #   @param paykey_details [Straddle::Models::PaykeyDetails]
      #
      #   @param payment_rail [Symbol, Straddle::Models::PaymentRail] The payment rail used for the charge or payout.
      #
      #   @param processed_at [Time, nil] Timestamp when this charge was submitted to the payment network. Null until proc
      #
      #   @param related_payments [Array<Straddle::Models::RelatedPayment>, nil] Related payments and their relationship to this charge.
    end
  end
end
