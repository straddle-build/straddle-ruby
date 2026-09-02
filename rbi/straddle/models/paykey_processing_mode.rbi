# typed: strong

module Straddle
  module Models
    module PaykeyProcessingMode
      extend Straddle::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Straddle::PaykeyProcessingMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INLINE = T.let(:inline, Straddle::PaykeyProcessingMode::TaggedSymbol)
      BACKGROUND =
        T.let(:background, Straddle::PaykeyProcessingMode::TaggedSymbol)
      SKIP = T.let(:skip, Straddle::PaykeyProcessingMode::TaggedSymbol)

      sig do
        override.returns(T::Array[Straddle::PaykeyProcessingMode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
