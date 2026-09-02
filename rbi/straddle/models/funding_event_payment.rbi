# typed: strong

module Straddle
  module Models
    class FundingEventPayment < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::FundingEventPayment, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this payment.
      sig { returns(String) }
      attr_accessor :id

      # Three-letter ISO 4217 currency code.
      sig { returns(String) }
      attr_accessor :currency

      # Your unique identifier for this payment, used to correlate with your internal
      # records.
      sig { returns(String) }
      attr_accessor :external_id

      # Portion of the payment amount included in this funding event, in the smallest
      # currency unit.
      sig { returns(Integer) }
      attr_accessor :funding_amount

      # Total payment amount in the smallest currency unit (e.g. 1000 = $10.00 USD).
      sig { returns(Integer) }
      attr_accessor :payment_amount

      # The date on which this payment was submitted for processing.
      sig { returns(Date) }
      attr_accessor :payment_date

      # Whether this payment is a charge or payout.
      sig { returns(Straddle::PaymentType::TaggedSymbol) }
      attr_accessor :payment_type

      # Reason this payment was included in the funding event.
      sig { returns(Straddle::FundingEventPaymentReason::TaggedSymbol) }
      attr_accessor :reason

      # Current status of this payment.
      sig { returns(Straddle::PaymentStatus::TaggedSymbol) }
      attr_accessor :status

      # Network-level trace identifiers assigned during processing. Keys vary by payment
      # rail.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :trace_ids

      # Details of the customer associated with this payment.
      sig { returns(T.nilable(Straddle::CustomerDetails)) }
      attr_reader :customer_details

      sig { params(customer_details: Straddle::CustomerDetails::OrHash).void }
      attr_writer :customer_details

      # Key-value metadata for this payment. Included only when `include_metadata` is
      # `true`.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Details of the paykey used for this payment.
      sig { returns(T.nilable(Straddle::PaykeyDetails)) }
      attr_reader :paykey_details

      sig { params(paykey_details: Straddle::PaykeyDetails::OrHash).void }
      attr_writer :paykey_details

      sig do
        params(
          id: String,
          currency: String,
          external_id: String,
          funding_amount: Integer,
          payment_amount: Integer,
          payment_date: Date,
          payment_type: Straddle::PaymentType::OrSymbol,
          reason: Straddle::FundingEventPaymentReason::OrSymbol,
          status: Straddle::PaymentStatus::OrSymbol,
          trace_ids: T::Hash[Symbol, String],
          customer_details: Straddle::CustomerDetails::OrHash,
          metadata: T.nilable(T::Hash[Symbol, String]),
          paykey_details: Straddle::PaykeyDetails::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this payment.
        id:,
        # Three-letter ISO 4217 currency code.
        currency:,
        # Your unique identifier for this payment, used to correlate with your internal
        # records.
        external_id:,
        # Portion of the payment amount included in this funding event, in the smallest
        # currency unit.
        funding_amount:,
        # Total payment amount in the smallest currency unit (e.g. 1000 = $10.00 USD).
        payment_amount:,
        # The date on which this payment was submitted for processing.
        payment_date:,
        # Whether this payment is a charge or payout.
        payment_type:,
        # Reason this payment was included in the funding event.
        reason:,
        # Current status of this payment.
        status:,
        # Network-level trace identifiers assigned during processing. Keys vary by payment
        # rail.
        trace_ids:,
        # Details of the customer associated with this payment.
        customer_details: nil,
        # Key-value metadata for this payment. Included only when `include_metadata` is
        # `true`.
        metadata: nil,
        # Details of the paykey used for this payment.
        paykey_details: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            currency: String,
            external_id: String,
            funding_amount: Integer,
            payment_amount: Integer,
            payment_date: Date,
            payment_type: Straddle::PaymentType::TaggedSymbol,
            reason: Straddle::FundingEventPaymentReason::TaggedSymbol,
            status: Straddle::PaymentStatus::TaggedSymbol,
            trace_ids: T::Hash[Symbol, String],
            customer_details: Straddle::CustomerDetails,
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetails
          }
        )
      end
      def to_hash
      end
    end
  end
end
