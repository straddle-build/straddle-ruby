# typed: strong

module Straddle
  module Models
    module PaykeyStatus
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::PaykeyStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Straddle::PaykeyStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Straddle::PaykeyStatus::TaggedSymbol)
      INACTIVE = T.let(:inactive, Straddle::PaykeyStatus::TaggedSymbol)
      REJECTED = T.let(:rejected, Straddle::PaykeyStatus::TaggedSymbol)
      REVIEW = T.let(:review, Straddle::PaykeyStatus::TaggedSymbol)
      BLOCKED = T.let(:blocked, Straddle::PaykeyStatus::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::PaykeyStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
