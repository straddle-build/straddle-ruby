# typed: strong

module Straddle
  module Models
    class PaymentStatusDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentStatusDetails, Straddle::Internal::AnyHash)
        end

      # Timestamp when the status changed.
      sig { returns(Time) }
      attr_accessor :changed_at

      # Human-readable status description.
      sig { returns(String) }
      attr_accessor :message

      # Machine-readable reason for the status.
      sig { returns(Straddle::PaymentStatusReason::TaggedSymbol) }
      attr_accessor :reason

      # Source of the status change.
      sig { returns(Straddle::PaymentStatusSource::TaggedSymbol) }
      attr_accessor :source

      # Status code, when available.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      sig do
        params(
          changed_at: Time,
          message: String,
          reason: Straddle::PaymentStatusReason::OrSymbol,
          source: Straddle::PaymentStatusSource::OrSymbol,
          code: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Timestamp when the status changed.
        changed_at:,
        # Human-readable status description.
        message:,
        # Machine-readable reason for the status.
        reason:,
        # Source of the status change.
        source:,
        # Status code, when available.
        code: nil
      )
      end

      sig do
        override.returns(
          {
            changed_at: Time,
            message: String,
            reason: Straddle::PaymentStatusReason::TaggedSymbol,
            source: Straddle::PaymentStatusSource::TaggedSymbol,
            code: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
