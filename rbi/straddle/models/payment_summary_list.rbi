# typed: strong

module Straddle
  module Models
    class PaymentSummaryList < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentSummaryList, Straddle::Internal::AnyHash)
        end

      # Payments returned for this page.
      sig { returns(T::Array[Straddle::PaymentSummary]) }
      attr_accessor :data

      # Metadata for an API request and a page of results.
      sig { returns(Straddle::PageMetadata) }
      attr_reader :meta

      sig { params(meta: Straddle::PageMetadata::OrHash).void }
      attr_writer :meta

      # Shape of the response envelope.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of JSON objects.
      # - `error` means `error` contains the error details.
      # - `none` means the response contains no data.
      sig { returns(Straddle::ResponseType::TaggedSymbol) }
      attr_accessor :response_type

      sig do
        params(
          data: T::Array[Straddle::PaymentSummary::OrHash],
          meta: Straddle::PageMetadata::OrHash,
          response_type: Straddle::ResponseType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Payments returned for this page.
        data:,
        # Metadata for an API request and a page of results.
        meta:,
        # Shape of the response envelope.
        #
        # - `object` means `data` contains one JSON object.
        # - `array` means `data` contains an array of JSON objects.
        # - `error` means `error` contains the error details.
        # - `none` means the response contains no data.
        response_type:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Straddle::PaymentSummary],
            meta: Straddle::PageMetadata,
            response_type: Straddle::ResponseType::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
