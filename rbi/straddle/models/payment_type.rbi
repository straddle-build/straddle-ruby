# typed: strong

module Straddle
  module Models
    # The type of payment.
    module PaymentType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::PaymentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHARGE = T.let(:charge, Straddle::PaymentType::TaggedSymbol)
      PAYOUT = T.let(:payout, Straddle::PaymentType::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::PaymentType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
