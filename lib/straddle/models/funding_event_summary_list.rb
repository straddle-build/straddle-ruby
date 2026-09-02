# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::FundingEvents#list
    class FundingEventSummaryList < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #   Funding events returned for this page.
      #
      #   @return [Array<Straddle::Models::FundingEventSummary>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::FundingEventSummary] }

      # @!attribute meta
      #   Metadata for an API request and a page of results.
      #
      #   @return [Straddle::Models::PageMetadata]
      required :meta, -> { Straddle::PageMetadata }

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
      #   {Straddle::Models::FundingEventSummaryList} for more details.
      #
      #   @param data [Array<Straddle::Models::FundingEventSummary>] Funding events returned for this page.
      #
      #   @param meta [Straddle::Models::PageMetadata] Metadata for an API request and a page of results.
      #
      #   @param response_type [Symbol, Straddle::Models::ResponseType] Shape of the response envelope.
    end
  end
end
