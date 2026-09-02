# typed: strong

module Straddle
  module Models
    class OrganizationList < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::OrganizationList, Straddle::Internal::AnyHash)
        end

      # Organizations returned for this page.
      sig { returns(T::Array[Straddle::Organization]) }
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
      sig { returns(Straddle::OrganizationList::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::Organization::OrHash],
          meta: Straddle::PageMetadata::OrHash,
          response_type: Straddle::OrganizationList::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Organizations returned for this page.
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
            data: T::Array[Straddle::Organization],
            meta: Straddle::PageMetadata,
            response_type:
              Straddle::OrganizationList::ResponseType::TaggedSymbol
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
            T.all(Symbol, Straddle::OrganizationList::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(:object, Straddle::OrganizationList::ResponseType::TaggedSymbol)
        ARRAY =
          T.let(:array, Straddle::OrganizationList::ResponseType::TaggedSymbol)
        ERROR =
          T.let(:error, Straddle::OrganizationList::ResponseType::TaggedSymbol)
        NONE =
          T.let(:none, Straddle::OrganizationList::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::OrganizationList::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
