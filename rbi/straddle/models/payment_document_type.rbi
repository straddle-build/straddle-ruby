# typed: strong

module Straddle
  module Models
    module PaymentDocumentType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaymentDocumentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PAYMENT_AUTHORIZATION =
        T.let(
          :payment_authorization,
          Straddle::PaymentDocumentType::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Straddle::PaymentDocumentType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
