# typed: strong

module Straddle
  module Models
    # The current status of the `charge` or `payout`.
    module PaymentStatus
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::PaymentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CREATED = T.let(:created, Straddle::PaymentStatus::TaggedSymbol)
      SCHEDULED = T.let(:scheduled, Straddle::PaymentStatus::TaggedSymbol)
      FAILED = T.let(:failed, Straddle::PaymentStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Straddle::PaymentStatus::TaggedSymbol)
      ON_HOLD = T.let(:on_hold, Straddle::PaymentStatus::TaggedSymbol)
      PENDING = T.let(:pending, Straddle::PaymentStatus::TaggedSymbol)
      PAID = T.let(:paid, Straddle::PaymentStatus::TaggedSymbol)
      REVERSED = T.let(:reversed, Straddle::PaymentStatus::TaggedSymbol)
      VALIDATING = T.let(:validating, Straddle::PaymentStatus::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::PaymentStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
