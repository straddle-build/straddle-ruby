# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      # @see Straddle::Resources::Customers::Review#list
      class CustomerReviewResponse < Straddle::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Straddle::Models::Customers::CustomerReview]
        required :data, -> { Straddle::Customers::CustomerReview }

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
        #   {Straddle::Models::Customers::CustomerReviewResponse} for more details.
        #
        #   @param data [Straddle::Models::Customers::CustomerReview]
        #
        #   @param meta [Straddle::Models::ResponseMetadata] Metadata for an API request.
        #
        #   @param response_type [Symbol, Straddle::Models::ResponseType] Shape of the response envelope.
      end
    end

    CustomerReviewResponse = Customers::CustomerReviewResponse
  end
end
