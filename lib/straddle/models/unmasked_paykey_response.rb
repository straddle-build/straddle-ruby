# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Paykeys#list_unmasked
    class UnmaskedPaykeyResponse < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::UnmaskedPaykey]
      required :data, -> { Straddle::UnmaskedPaykey }

      # @!attribute meta
      #   Metadata for an API request.
      #
      #   @return [Straddle::Models::ResponseMetadata]
      required :meta, -> { Straddle::ResponseMetadata }

      # @!attribute response_type
      #   Shape of the response envelope.
      #
      #   - `object` means `data` contains one JSON object.
      #   - `array` means `data` contains an array of JSON objects.
      #   - `error` means `error` contains the error details.
      #   - `none` means the response contains no data.
      #
      #   @return [Symbol, Straddle::Models::ResponseType]
      required :response_type, enum: -> { Straddle::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::UnmaskedPaykeyResponse} for more details.
      #
      #   @param data [Straddle::Models::UnmaskedPaykey]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata for an API request.
      #
      #   @param response_type [Symbol, Straddle::Models::ResponseType] Shape of the response envelope.
    end
  end
end
