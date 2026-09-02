# typed: strong

module Straddle
  module Models
    class AccountList < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountList, Straddle::Internal::AnyHash)
        end

      # Accounts returned for this page.
      sig { returns(T::Array[Straddle::Account]) }
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
      sig { returns(Straddle::AccountList::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::Account::OrHash],
          meta: Straddle::PageMetadata::OrHash,
          response_type: Straddle::AccountList::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Accounts returned for this page.
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
            data: T::Array[Straddle::Account],
            meta: Straddle::PageMetadata,
            response_type: Straddle::AccountList::ResponseType::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Straddle::AccountList::ResponseType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(:object, Straddle::AccountList::ResponseType::TaggedSymbol)
        ARRAY = T.let(:array, Straddle::AccountList::ResponseType::TaggedSymbol)
        ERROR = T.let(:error, Straddle::AccountList::ResponseType::TaggedSymbol)
        NONE = T.let(:none, Straddle::AccountList::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountList::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
