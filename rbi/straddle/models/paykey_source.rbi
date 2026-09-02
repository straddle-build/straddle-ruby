# typed: strong

module Straddle
  module Models
    module PaykeySource
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::PaykeySource) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BANK_ACCOUNT = T.let(:bank_account, Straddle::PaykeySource::TaggedSymbol)
      STRADDLE = T.let(:straddle, Straddle::PaykeySource::TaggedSymbol)
      MX = T.let(:mx, Straddle::PaykeySource::TaggedSymbol)
      PLAID = T.let(:plaid, Straddle::PaykeySource::TaggedSymbol)
      TAN = T.let(:tan, Straddle::PaykeySource::TaggedSymbol)
      QUILTT = T.let(:quiltt, Straddle::PaykeySource::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::PaykeySource::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
