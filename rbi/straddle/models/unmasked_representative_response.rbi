# typed: strong

module Straddle
  module Models
    class UnmaskedRepresentativeResponse < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::UnmaskedRepresentativeResponse,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::UnmaskedRepresentative) }
      attr_reader :data

      sig { params(data: Straddle::UnmaskedRepresentative::OrHash).void }
      attr_writer :data

      # Metadata for an API request.
      sig { returns(Straddle::ResponseMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
      attr_writer :meta

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      sig do
        returns(
          Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
        )
      end
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::UnmaskedRepresentative::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type:
            Straddle::UnmaskedRepresentativeResponse::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Metadata for an API request.
        meta:,
        # Indicates how the response content is structured.
        #
        # - `object` means `data` contains one JSON object.
        # - `array` means `data` contains an array of objects.
        # - `error` means `error` contains error details.
        # - `none` means the response has no data.
        response_type:
      )
      end

      sig do
        override.returns(
          {
            data: Straddle::UnmaskedRepresentative,
            meta: Straddle::ResponseMetadata,
            response_type:
              Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      module ResponseType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Straddle::UnmaskedRepresentativeResponse::ResponseType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::UnmaskedRepresentativeResponse::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
