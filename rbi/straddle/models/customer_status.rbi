# typed: strong

module Straddle
  module Models
    module CustomerStatus
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::CustomerStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Straddle::CustomerStatus::TaggedSymbol)
      REVIEW = T.let(:review, Straddle::CustomerStatus::TaggedSymbol)
      VERIFIED = T.let(:verified, Straddle::CustomerStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, Straddle::CustomerStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Straddle::CustomerStatus::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::CustomerStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
