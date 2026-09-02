# typed: strong

module Straddle
  module Models
    PaykeyReviewResponse = Paykeys::PaykeyReviewResponse

    module Paykeys
      class PaykeyReviewResponse < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::PaykeyReviewResponse,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Paykeys::PaykeyReview) }
        attr_reader :data

        sig { params(data: Straddle::Paykeys::PaykeyReview::OrHash).void }
        attr_writer :data

        # Metadata for an API request.
        sig { returns(Straddle::ResponseMetadata) }
        attr_reader :meta

        sig { params(meta: Straddle::ResponseMetadata::OrHash).void }
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
            data: Straddle::Paykeys::PaykeyReview::OrHash,
            meta: Straddle::ResponseMetadata::OrHash,
            response_type: Straddle::ResponseType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Metadata for an API request.
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
              data: Straddle::Paykeys::PaykeyReview,
              meta: Straddle::ResponseMetadata,
              response_type: Straddle::ResponseType::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
