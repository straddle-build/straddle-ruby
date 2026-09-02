# typed: strong

module Straddle
  module Models
    class RepresentativeList < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::RepresentativeList, Straddle::Internal::AnyHash)
        end

      # Representatives returned for this page.
      sig { returns(T::Array[Straddle::Representative]) }
      attr_accessor :data

      # Metadata for an API request and a page of results.
      sig { returns(Straddle::PageMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::PageMetadata::OrHash).void }
      attr_writer :meta

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      sig { returns(Straddle::RepresentativeList::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::Representative::OrHash],
          meta: Straddle::PageMetadata::OrHash,
          response_type: Straddle::RepresentativeList::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Representatives returned for this page.
        data:,
        # Metadata for an API request and a page of results.
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
            data: T::Array[Straddle::Representative],
            meta: Straddle::PageMetadata,
            response_type:
              Straddle::RepresentativeList::ResponseType::TaggedSymbol
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
            T.all(Symbol, Straddle::RepresentativeList::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::RepresentativeList::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::RepresentativeList::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::RepresentativeList::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(:none, Straddle::RepresentativeList::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::RepresentativeList::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
