# typed: strong

module Straddle
  module Models
    # Reason the payment was included in the funding event.
    module FundingEventPaymentReason
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::FundingEventPaymentReason) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CREDIT = T.let(:credit, Straddle::FundingEventPaymentReason::TaggedSymbol)
      DEBIT = T.let(:debit, Straddle::FundingEventPaymentReason::TaggedSymbol)
      REVERSAL =
        T.let(:reversal, Straddle::FundingEventPaymentReason::TaggedSymbol)
      FAILED = T.let(:failed, Straddle::FundingEventPaymentReason::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Straddle::FundingEventPaymentReason::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
