# typed: strong

module Straddle
  module Models
    class AccountResponse < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountResponse, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::Account) }
      attr_reader :data

      sig { params(data: Straddle::Account::OrHash).void }
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
      sig { returns(Straddle::AccountResponse::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: Straddle::Account::OrHash,
          meta: Straddle::ResponseMetadata::OrHash,
          response_type: Straddle::AccountResponse::ResponseType::OrSymbol
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
            data: Straddle::Account,
            meta: Straddle::ResponseMetadata,
            response_type: Straddle::AccountResponse::ResponseType::TaggedSymbol
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
            T.all(Symbol, Straddle::AccountResponse::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OBJECT =
          T.let(:object, Straddle::AccountResponse::ResponseType::TaggedSymbol)
        ARRAY =
          T.let(:array, Straddle::AccountResponse::ResponseType::TaggedSymbol)
        ERROR =
          T.let(:error, Straddle::AccountResponse::ResponseType::TaggedSymbol)
        NONE =
          T.let(:none, Straddle::AccountResponse::ResponseType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountResponse::ResponseType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
