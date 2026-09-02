# typed: strong

module Straddle
  module Models
    # The payment rail used for the charge or payout.
    module PaymentRail
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::PaymentRail) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, Straddle::PaymentRail::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::PaymentRail::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
