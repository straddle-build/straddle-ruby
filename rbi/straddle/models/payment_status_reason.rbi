# typed: strong

module Straddle
  module Models
    module PaymentStatusReason
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaymentStatusReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INSUFFICIENT_FUNDS =
        T.let(:insufficient_funds, Straddle::PaymentStatusReason::TaggedSymbol)
      CLOSED_BANK_ACCOUNT =
        T.let(:closed_bank_account, Straddle::PaymentStatusReason::TaggedSymbol)
      INVALID_BANK_ACCOUNT =
        T.let(
          :invalid_bank_account,
          Straddle::PaymentStatusReason::TaggedSymbol
        )
      INVALID_ROUTING =
        T.let(:invalid_routing, Straddle::PaymentStatusReason::TaggedSymbol)
      DISPUTED = T.let(:disputed, Straddle::PaymentStatusReason::TaggedSymbol)
      PAYMENT_STOPPED =
        T.let(:payment_stopped, Straddle::PaymentStatusReason::TaggedSymbol)
      OWNER_DECEASED =
        T.let(:owner_deceased, Straddle::PaymentStatusReason::TaggedSymbol)
      FROZEN_BANK_ACCOUNT =
        T.let(:frozen_bank_account, Straddle::PaymentStatusReason::TaggedSymbol)
      RISK_REVIEW =
        T.let(:risk_review, Straddle::PaymentStatusReason::TaggedSymbol)
      FRAUDULENT =
        T.let(:fraudulent, Straddle::PaymentStatusReason::TaggedSymbol)
      DUPLICATE_ENTRY =
        T.let(:duplicate_entry, Straddle::PaymentStatusReason::TaggedSymbol)
      INVALID_PAYKEY =
        T.let(:invalid_paykey, Straddle::PaymentStatusReason::TaggedSymbol)
      PAYMENT_BLOCKED =
        T.let(:payment_blocked, Straddle::PaymentStatusReason::TaggedSymbol)
      AMOUNT_TOO_LARGE =
        T.let(:amount_too_large, Straddle::PaymentStatusReason::TaggedSymbol)
      TOO_MANY_ATTEMPTS =
        T.let(:too_many_attempts, Straddle::PaymentStatusReason::TaggedSymbol)
      INTERNAL_SYSTEM_ERROR =
        T.let(
          :internal_system_error,
          Straddle::PaymentStatusReason::TaggedSymbol
        )
      USER_REQUEST =
        T.let(:user_request, Straddle::PaymentStatusReason::TaggedSymbol)
      OK = T.let(:ok, Straddle::PaymentStatusReason::TaggedSymbol)
      OTHER_NETWORK_RETURN =
        T.let(
          :other_network_return,
          Straddle::PaymentStatusReason::TaggedSymbol
        )
      PAYOUT_REFUSED =
        T.let(:payout_refused, Straddle::PaymentStatusReason::TaggedSymbol)
      CANCEL_REQUEST =
        T.let(:cancel_request, Straddle::PaymentStatusReason::TaggedSymbol)
      FAILED_VERIFICATION =
        T.let(:failed_verification, Straddle::PaymentStatusReason::TaggedSymbol)
      REQUIRE_REVIEW =
        T.let(:require_review, Straddle::PaymentStatusReason::TaggedSymbol)
      BLOCKED_BY_SYSTEM =
        T.let(:blocked_by_system, Straddle::PaymentStatusReason::TaggedSymbol)
      WATCHTOWER_REVIEW =
        T.let(:watchtower_review, Straddle::PaymentStatusReason::TaggedSymbol)
      VALIDATING =
        T.let(:validating, Straddle::PaymentStatusReason::TaggedSymbol)
      AUTO_HOLD = T.let(:auto_hold, Straddle::PaymentStatusReason::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::PaymentStatusReason::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
