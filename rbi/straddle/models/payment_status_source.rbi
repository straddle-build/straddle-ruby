# typed: strong

module Straddle
  module Models
    module PaymentStatusSource
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaymentStatusSource) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WATCHTOWER =
        T.let(:watchtower, Straddle::PaymentStatusSource::TaggedSymbol)
      BANK_DECLINE =
        T.let(:bank_decline, Straddle::PaymentStatusSource::TaggedSymbol)
      CUSTOMER_DISPUTE =
        T.let(:customer_dispute, Straddle::PaymentStatusSource::TaggedSymbol)
      USER_ACTION =
        T.let(:user_action, Straddle::PaymentStatusSource::TaggedSymbol)
      SYSTEM = T.let(:system, Straddle::PaymentStatusSource::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::PaymentStatusSource::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
