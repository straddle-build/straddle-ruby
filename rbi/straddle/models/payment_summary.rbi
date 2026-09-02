# typed: strong

module Straddle
  module Models
    class PaymentSummary < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentSummary, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this charge or payout.
      sig { returns(String) }
      attr_accessor :id

      # Amount in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # Timestamp when the charge or payout was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Currency code. Only `USD` is supported.
      sig { returns(String) }
      attr_accessor :currency

      # Human-readable description of the payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Your unique identifier for the charge or payout.
      sig { returns(String) }
      attr_accessor :external_id

      # IDs of the funding events that included this payment.
      sig { returns(T::Array[String]) }
      attr_accessor :funding_ids

      # Whether this payment is a charge refunded by an associated payout.
      sig { returns(T::Boolean) }
      attr_accessor :has_refund

      # Whether this payment has been resubmitted.
      sig { returns(T::Boolean) }
      attr_accessor :has_resubmit

      # Whether this payment is a payout that refunds an original charge.
      sig { returns(T::Boolean) }
      attr_accessor :is_refund

      # Whether this payment resubmits an original payment.
      sig { returns(T::Boolean) }
      attr_accessor :is_resubmit

      # Masked paykey token used for the charge or payout.
      sig { returns(String) }
      attr_accessor :paykey

      # Date when Straddle submits the payment for processing.
      sig { returns(Date) }
      attr_accessor :payment_date

      # Whether this payment is a charge or payout.
      sig { returns(Straddle::PaymentType::TaggedSymbol) }
      attr_accessor :payment_type

      # Current status of the charge or payout.
      sig { returns(Straddle::PaymentStatus::TaggedSymbol) }
      attr_accessor :status

      # Reason, source, and message for the most recent status change.
      sig { returns(Straddle::PaymentStatusDetails) }
      attr_reader :status_details

      sig do
        params(status_details: Straddle::PaymentStatusDetails::OrHash).void
      end
      attr_writer :status_details

      # Network-level trace identifiers assigned during processing. Keys vary by payment
      # rail.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :trace_ids

      # Timestamp when the charge or payout was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Information about the customer associated with the charge or payout.
      sig { returns(T.nilable(Straddle::CustomerDetails)) }
      attr_reader :customer_details

      sig { params(customer_details: Straddle::CustomerDetails::OrHash).void }
      attr_writer :customer_details

      # Timestamp when funds settled. Null until settlement is confirmed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at

      # Unique identifier for the funding event associated with the `charge` or
      # `payout`.
      sig { returns(T.nilable(String)) }
      attr_accessor :funding_id

      # Key-value metadata for the payment. Included only when `include_metadata` is
      # true.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Details of the paykey used for the charge or payout.
      sig { returns(T.nilable(Straddle::PaykeyDetails)) }
      attr_reader :paykey_details

      sig { params(paykey_details: Straddle::PaykeyDetails::OrHash).void }
      attr_writer :paykey_details

      # Related payments and their relationship to this charge or payout.
      sig { returns(T.nilable(T::Array[Straddle::RelatedPayment])) }
      attr_accessor :related_payments

      sig do
        params(
          id: String,
          amount: Integer,
          created_at: Time,
          currency: String,
          description: T.nilable(String),
          external_id: String,
          funding_ids: T::Array[String],
          has_refund: T::Boolean,
          has_resubmit: T::Boolean,
          is_refund: T::Boolean,
          is_resubmit: T::Boolean,
          paykey: String,
          payment_date: Date,
          payment_type: Straddle::PaymentType::OrSymbol,
          status: Straddle::PaymentStatus::OrSymbol,
          status_details: Straddle::PaymentStatusDetails::OrHash,
          trace_ids: T::Hash[Symbol, String],
          updated_at: Time,
          customer_details: Straddle::CustomerDetails::OrHash,
          effective_at: T.nilable(Time),
          funding_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          paykey_details: Straddle::PaykeyDetails::OrHash,
          related_payments:
            T.nilable(T::Array[Straddle::RelatedPayment::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this charge or payout.
        id:,
        # Amount in cents.
        amount:,
        # Timestamp when the charge or payout was created.
        created_at:,
        # Currency code. Only `USD` is supported.
        currency:,
        # Human-readable description of the payment.
        description:,
        # Your unique identifier for the charge or payout.
        external_id:,
        # IDs of the funding events that included this payment.
        funding_ids:,
        # Whether this payment is a charge refunded by an associated payout.
        has_refund:,
        # Whether this payment has been resubmitted.
        has_resubmit:,
        # Whether this payment is a payout that refunds an original charge.
        is_refund:,
        # Whether this payment resubmits an original payment.
        is_resubmit:,
        # Masked paykey token used for the charge or payout.
        paykey:,
        # Date when Straddle submits the payment for processing.
        payment_date:,
        # Whether this payment is a charge or payout.
        payment_type:,
        # Current status of the charge or payout.
        status:,
        # Reason, source, and message for the most recent status change.
        status_details:,
        # Network-level trace identifiers assigned during processing. Keys vary by payment
        # rail.
        trace_ids:,
        # Timestamp when the charge or payout was last updated.
        updated_at:,
        # Information about the customer associated with the charge or payout.
        customer_details: nil,
        # Timestamp when funds settled. Null until settlement is confirmed.
        effective_at: nil,
        # Unique identifier for the funding event associated with the `charge` or
        # `payout`.
        funding_id: nil,
        # Key-value metadata for the payment. Included only when `include_metadata` is
        # true.
        metadata: nil,
        # Details of the paykey used for the charge or payout.
        paykey_details: nil,
        # Related payments and their relationship to this charge or payout.
        related_payments: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            created_at: Time,
            currency: String,
            description: T.nilable(String),
            external_id: String,
            funding_ids: T::Array[String],
            has_refund: T::Boolean,
            has_resubmit: T::Boolean,
            is_refund: T::Boolean,
            is_resubmit: T::Boolean,
            paykey: String,
            payment_date: Date,
            payment_type: Straddle::PaymentType::TaggedSymbol,
            status: Straddle::PaymentStatus::TaggedSymbol,
            status_details: Straddle::PaymentStatusDetails,
            trace_ids: T::Hash[Symbol, String],
            updated_at: Time,
            customer_details: Straddle::CustomerDetails,
            effective_at: T.nilable(Time),
            funding_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetails,
            related_payments: T.nilable(T::Array[Straddle::RelatedPayment])
          }
        )
      end
      def to_hash
      end
    end
  end
end
