# typed: strong

module Straddle
  module Models
    class Charge < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Straddle::Charge, Straddle::Internal::AnyHash) }

      # Unique identifier for this charge.
      sig { returns(String) }
      attr_accessor :id

      # Amount in cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # Configuration options for the charge.
      sig { returns(Straddle::ChargeConfiguration) }
      attr_reader :config

      sig { params(config: Straddle::ChargeConfiguration::OrHash).void }
      attr_writer :config

      # How the customer authorized the charge. `internet` covers online and mobile
      # authorization. `signed` covers written or PDF-signed agreements.
      sig { returns(Straddle::ConsentType::TaggedSymbol) }
      attr_accessor :consent_type

      # Timestamp when this charge was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Currency code. Only `USD` is supported.
      sig { returns(String) }
      attr_accessor :currency

      # A human-readable description of the charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Device used when the customer authorized the charge.
      sig { returns(Straddle::MaskedPaymentDevice) }
      attr_reader :device

      sig { params(device: Straddle::MaskedPaymentDevice::OrHash).void }
      attr_writer :device

      # Your unique identifier for this charge, used to correlate with your internal
      # records.
      sig { returns(String) }
      attr_accessor :external_id

      # IDs of the funding events that included this charge.
      sig { returns(T::Array[String]) }
      attr_accessor :funding_ids

      # Whether an associated payout has refunded this charge.
      sig { returns(T::Boolean) }
      attr_accessor :has_refund

      # Whether this charge has been resubmitted.
      sig { returns(T::Boolean) }
      attr_accessor :has_resubmit

      # Whether this charge resubmits an original charge.
      sig { returns(T::Boolean) }
      attr_accessor :is_resubmit

      # The masked paykey token used for this charge.
      sig { returns(String) }
      attr_accessor :paykey

      # Date when Straddle submits the charge for processing.
      sig { returns(Date) }
      attr_accessor :payment_date

      # The current status of the charge.
      sig { returns(Straddle::PaymentStatus::TaggedSymbol) }
      attr_accessor :status

      # Reason, source, and message for the most recent charge status change.
      sig { returns(Straddle::PaymentStatusDetails) }
      attr_reader :status_details

      sig do
        params(status_details: Straddle::PaymentStatusDetails::OrHash).void
      end
      attr_writer :status_details

      # Complete ordered history of all status changes for this charge.
      sig { returns(T::Array[Straddle::PaymentStatusHistory]) }
      attr_accessor :status_history

      # Trace identifiers from the payment network. Keys depend on the payment rail.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :trace_ids

      # Timestamp when this charge was last updated.
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      # Information about the customer associated with the charge.
      sig { returns(T.nilable(Straddle::CustomerDetails)) }
      attr_reader :customer_details

      sig { params(customer_details: Straddle::CustomerDetails::OrHash).void }
      attr_writer :customer_details

      # Authorization documents for this charge, ordered by upload time.
      sig { returns(T.nilable(T::Array[Straddle::PaymentAuthorizationProof])) }
      attr_accessor :documents

      # Timestamp when funds were settled. Null until settlement is confirmed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_at

      # Key-value metadata stored with this charge.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Information about the paykey used for the charge.
      sig { returns(T.nilable(Straddle::PaykeyDetails)) }
      attr_reader :paykey_details

      sig { params(paykey_details: Straddle::PaykeyDetails::OrHash).void }
      attr_writer :paykey_details

      # Payment rail used to process the charge.
      sig { returns(T.nilable(Straddle::PaymentRail::TaggedSymbol)) }
      attr_reader :payment_rail

      sig { params(payment_rail: Straddle::PaymentRail::OrSymbol).void }
      attr_writer :payment_rail

      # Timestamp when this charge was submitted to the payment network. Null until
      # processed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :processed_at

      # Related payments and their relationship to this charge.
      sig { returns(T.nilable(T::Array[Straddle::RelatedPayment])) }
      attr_accessor :related_payments

      sig do
        params(
          id: String,
          amount: Integer,
          config: Straddle::ChargeConfiguration::OrHash,
          consent_type: Straddle::ConsentType::OrSymbol,
          created_at: T.nilable(Time),
          currency: String,
          description: T.nilable(String),
          device: Straddle::MaskedPaymentDevice::OrHash,
          external_id: String,
          funding_ids: T::Array[String],
          has_refund: T::Boolean,
          has_resubmit: T::Boolean,
          is_resubmit: T::Boolean,
          paykey: String,
          payment_date: Date,
          status: Straddle::PaymentStatus::OrSymbol,
          status_details: Straddle::PaymentStatusDetails::OrHash,
          status_history: T::Array[Straddle::PaymentStatusHistory::OrHash],
          trace_ids: T::Hash[Symbol, String],
          updated_at: T.nilable(Time),
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
        # Unique identifier for this charge.
        id:,
        # Amount in cents.
        amount:,
        # Configuration options for the charge.
        config:,
        # How the customer authorized the charge. `internet` covers online and mobile
        # authorization. `signed` covers written or PDF-signed agreements.
        consent_type:,
        # Timestamp when this charge was created.
        created_at:,
        # Currency code. Only `USD` is supported.
        currency:,
        # A human-readable description of the charge.
        description:,
        # Device used when the customer authorized the charge.
        device:,
        # Your unique identifier for this charge, used to correlate with your internal
        # records.
        external_id:,
        # IDs of the funding events that included this charge.
        funding_ids:,
        # Whether an associated payout has refunded this charge.
        has_refund:,
        # Whether this charge has been resubmitted.
        has_resubmit:,
        # Whether this charge resubmits an original charge.
        is_resubmit:,
        # The masked paykey token used for this charge.
        paykey:,
        # Date when Straddle submits the charge for processing.
        payment_date:,
        # The current status of the charge.
        status:,
        # Reason, source, and message for the most recent charge status change.
        status_details:,
        # Complete ordered history of all status changes for this charge.
        status_history:,
        # Trace identifiers from the payment network. Keys depend on the payment rail.
        trace_ids:,
        # Timestamp when this charge was last updated.
        updated_at:,
        # Information about the customer associated with the charge.
        customer_details: nil,
        # Authorization documents for this charge, ordered by upload time.
        documents: nil,
        # Timestamp when funds were settled. Null until settlement is confirmed.
        effective_at: nil,
        # Key-value metadata stored with this charge.
        metadata: nil,
        # Information about the paykey used for the charge.
        paykey_details: nil,
        # Payment rail used to process the charge.
        payment_rail: nil,
        # Timestamp when this charge was submitted to the payment network. Null until
        # processed.
        processed_at: nil,
        # Related payments and their relationship to this charge.
        related_payments: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            config: Straddle::ChargeConfiguration,
            consent_type: Straddle::ConsentType::TaggedSymbol,
            created_at: T.nilable(Time),
            currency: String,
            description: T.nilable(String),
            device: Straddle::MaskedPaymentDevice,
            external_id: String,
            funding_ids: T::Array[String],
            has_refund: T::Boolean,
            has_resubmit: T::Boolean,
            is_resubmit: T::Boolean,
            paykey: String,
            payment_date: Date,
            status: Straddle::PaymentStatus::TaggedSymbol,
            status_details: Straddle::PaymentStatusDetails,
            status_history: T::Array[Straddle::PaymentStatusHistory],
            trace_ids: T::Hash[Symbol, String],
            updated_at: T.nilable(Time),
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
