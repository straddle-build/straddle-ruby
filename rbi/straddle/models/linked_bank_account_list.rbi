# typed: strong

module Straddle
  module Models
    class LinkedBankAccountList < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::LinkedBankAccountList, Straddle::Internal::AnyHash)
        end

      # Linked bank accounts returned for this page.
      sig { returns(T::Array[Straddle::LinkedBankAccount]) }
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
      sig do
        returns(Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol)
      end
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::LinkedBankAccount::OrHash],
          meta: Straddle::PageMetadata::OrHash,
          response_type: Straddle::LinkedBankAccountList::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Linked bank accounts returned for this page.
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
            data: T::Array[Straddle::LinkedBankAccount],
            meta: Straddle::PageMetadata,
            response_type:
              Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
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
            T.all(Symbol, Straddle::LinkedBankAccountList::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(
            :object,
            Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
          )
        ARRAY =
          T.let(
            :array,
            Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountList::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
