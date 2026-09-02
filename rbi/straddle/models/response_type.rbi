# typed: strong

module Straddle
  module Models
    # Shape of the response envelope.
    #
    # - `object` means `data` contains one JSON object.
    # - `array` means `data` contains an array of JSON objects.
    # - `error` means `error` contains the error details.
    # - `none` means the response contains no data.
    module ResponseType
      extend Straddle::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::ResponseType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      OBJECT = T.let(:object, Straddle::ResponseType::TaggedSymbol)
      ARRAY = T.let(:array, Straddle::ResponseType::TaggedSymbol)
      ERROR = T.let(:error, Straddle::ResponseType::TaggedSymbol)
      NONE = T.let(:none, Straddle::ResponseType::TaggedSymbol)

      sig { override.returns(T::Array[Straddle::ResponseType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
