# typed: strong

module Straddle
  module Models
    # How the customer authorized the charge. `internet` covers online and mobile
    # authorization. `signed` covers written or PDF-signed agreements.
    module ConsentType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::ConsentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INTERNET = T.let(:internet, Straddle::ConsentType::TaggedSymbol)
      SIGNED = T.let(:signed, Straddle::ConsentType::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::ConsentType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
