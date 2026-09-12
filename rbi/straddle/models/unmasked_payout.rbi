# typed: strong

module Straddle
  module Models
    class UnmaskedPayout < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::UnmaskedPayout, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this payout.
      sig { returns(String) }
      attr_accessor :id

      # Amount in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Straddle::PayoutConfiguration) }
      attr_reader :config

      sig { params(config: Straddle::PayoutConfiguration::OrHash).void }
      attr_writer :config

      # Timestamp when this payout was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Currency code. Only `USD` is supported.
      sig { returns(String) }
      attr_accessor :currency

      # A human-readable description of the payout.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(Straddle::PaymentDevice) }
      attr_reader :device

      sig { params(device: Straddle::PaymentDevice::OrHash).void }
      attr_writer :device

      # Your unique identifier for this payout, used to correlate with your internal
      # records.
      sig { returns(String) }
      attr_accessor :external_id

      # IDs of the funding events that included this payout.
      sig { returns(T::Array[String]) }
      attr_accessor :funding_ids

      # Whether this payout has been resubmitted.
      sig { returns(T::Boolean) }
      attr_accessor :has_resubmit

      # Whether this payout refunds an original charge.
      sig { returns(T::Boolean) }
      attr_accessor :is_refund

      # Whether this payout resubmits an original payout.
      sig { returns(T::Boolean) }
      attr_accessor :is_resubmit

      # Unmasked paykey token used for this payout.
      sig { returns(String) }
      attr_accessor :paykey

      # Date when Straddle submits the payout for processing.
      sig { returns(Date) }
      attr_accessor :payment_date

      # The current status of the `charge` or `payout`.
      sig { returns(Straddle::PaymentStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Straddle::PaymentStatusDetails) }
      attr_reader :status_details

      sig do
        params(status_details: Straddle::PaymentStatusDetails::OrHash).void
      end
      attr_writer :status_details

      # Complete ordered history of all status changes for this payout.
      sig { returns(T::Array[Straddle::PaymentStatusHistory]) }
      attr_accessor :status_history

      # Trace identifiers from the payment network. Keys depend on the payment rail.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :trace_ids

      # Timestamp when this payout was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Information about the customer associated with the charge or payout.
      sig { returns(T.nilable(Straddle::CustomerDetails)) }
      attr_reader :customer_details

      sig { params(customer_details: Straddle::CustomerDetails::OrHash).void }
      attr_writer :customer_details

      # Authorization documents for this payout, ordered by upload time.
      sig { returns(T.nilable(T::Array[Straddle::PaymentAuthorizationProof])) }
      attr_accessor :documents

      # Timestamp when funds were settled. Null until settlement is confirmed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at

      # Key-value metadata stored with this payout.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Straddle::PaykeyDetails)) }
      attr_reader :paykey_details

      sig { params(paykey_details: Straddle::PaykeyDetails::OrHash).void }
      attr_writer :paykey_details

      # The payment rail used for the charge or payout.
      sig { returns(T.nilable(Straddle::PaymentRail::TaggedSymbol)) }
      attr_reader :payment_rail

      sig { params(payment_rail: Straddle::PaymentRail::OrSymbol).void }
      attr_writer :payment_rail

      # Timestamp when this payout was submitted to the payment network. Null until
      # processed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :processed_at

      # Related payments and their relationship to this payout.
      sig { returns(T.nilable(T::Array[Straddle::RelatedPayment])) }
      attr_accessor :related_payments

      sig do
        params(
          id: String,
          amount: Integer,
          config: Straddle::PayoutConfiguration::OrHash,
          created_at: Time,
          currency: String,
          description: T.nilable(String),
          device: Straddle::PaymentDevice::OrHash,
          external_id: String,
          funding_ids: T::Array[String],
          has_resubmit: T::Boolean,
          is_refund: T::Boolean,
          is_resubmit: T::Boolean,
          paykey: String,
          payment_date: Date,
          status: Straddle::PaymentStatus::OrSymbol,
          status_details: Straddle::PaymentStatusDetails::OrHash,
          status_history: T::Array[Straddle::PaymentStatusHistory::OrHash],
          trace_ids: T::Hash[Symbol, String],
          updated_at: Time,
          customer_details: Straddle::CustomerDetails::OrHash,
          documents:
            T.nilable(T::Array[Straddle::PaymentAuthorizationProof::OrHash]),
          effective_at: T.nilable(Time),
          metadata: T.nilable(T::Hash[Symbol, String]),
          paykey_details: Straddle::PaykeyDetails::OrHash,
          payment_rail: Straddle::PaymentRail::OrSymbol,
          processed_at: T.nilable(Time),
          related_payments:
            T.nilable(T::Array[Straddle::RelatedPayment::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this payout.
        id:,
        # Amount in cents.
        amount:,
        config:,
        # Timestamp when this payout was created.
        created_at:,
        # Currency code. Only `USD` is supported.
        currency:,
        # A human-readable description of the payout.
        description:,
        device:,
        # Your unique identifier for this payout, used to correlate with your internal
        # records.
        external_id:,
        # IDs of the funding events that included this payout.
        funding_ids:,
        # Whether this payout has been resubmitted.
        has_resubmit:,
        # Whether this payout refunds an original charge.
        is_refund:,
        # Whether this payout resubmits an original payout.
        is_resubmit:,
        # Unmasked paykey token used for this payout.
        paykey:,
        # Date when Straddle submits the payout for processing.
        payment_date:,
        # The current status of the `charge` or `payout`.
        status:,
        status_details:,
        # Complete ordered history of all status changes for this payout.
        status_history:,
        # Trace identifiers from the payment network. Keys depend on the payment rail.
        trace_ids:,
        # Timestamp when this payout was last updated.
        updated_at:,
        # Information about the customer associated with the charge or payout.
        customer_details: nil,
        # Authorization documents for this payout, ordered by upload time.
        documents: nil,
        # Timestamp when funds were settled. Null until settlement is confirmed.
        effective_at: nil,
        # Key-value metadata stored with this payout.
        metadata: nil,
        paykey_details: nil,
        # The payment rail used for the charge or payout.
        payment_rail: nil,
        # Timestamp when this payout was submitted to the payment network. Null until
        # processed.
        processed_at: nil,
        # Related payments and their relationship to this payout.
        related_payments: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            config: Straddle::PayoutConfiguration,
            created_at: Time,
            currency: String,
            description: T.nilable(String),
            device: Straddle::PaymentDevice,
            external_id: String,
            funding_ids: T::Array[String],
            has_resubmit: T::Boolean,
            is_refund: T::Boolean,
            is_resubmit: T::Boolean,
            paykey: String,
            payment_date: Date,
            status: Straddle::PaymentStatus::TaggedSymbol,
            status_details: Straddle::PaymentStatusDetails,
            status_history: T::Array[Straddle::PaymentStatusHistory],
            trace_ids: T::Hash[Symbol, String],
            updated_at: Time,
            customer_details: Straddle::CustomerDetails,
            documents: T.nilable(T::Array[Straddle::PaymentAuthorizationProof]),
            effective_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, String]),
            paykey_details: Straddle::PaykeyDetails,
            payment_rail: Straddle::PaymentRail::TaggedSymbol,
            processed_at: T.nilable(Time),
            related_payments: T.nilable(T::Array[Straddle::RelatedPayment])
          }
        )
      end
      def to_hash
      end
    end
  end
end
