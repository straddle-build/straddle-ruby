# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Representatives#list
    class RepresentativeList < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #   Representatives returned for this page.
      #
      #   @return [Array<Straddle::Models::Representative>]
      required :data, -> { Straddle::Internal::Type::ArrayOf[Straddle::Representative] }

      # @!attribute meta
      #   Metadata for an API request and a page of results.
      #
      #   @return [Straddle::Models::PageMetadata]
      required :meta, -> { Straddle::PageMetadata }

      # @!attribute response_type
      #   Indicates how the response content is structured.
      #
      #   - `object` means `data` contains one JSON object.
      #   - `array` means `data` contains an array of objects.
      #   - `error` means `error` contains error details.
      #   - `none` means the response has no data.
      #
      #   @return [Symbol, Straddle::Models::RepresentativeList::ResponseType]
      required :response_type, enum: -> { Straddle::RepresentativeList::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::RepresentativeList} for more details.
      #
      #   @param data [Array<Straddle::Models::Representative>] Representatives returned for this page.
      #
      #   @param meta [Straddle::Models::PageMetadata] Metadata for an API request and a page of results.
      #
      #   @param response_type [Symbol, Straddle::Models::RepresentativeList::ResponseType] Indicates how the response content is structured.

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      #
      # @see Straddle::Models::RepresentativeList#response_type
      module ResponseType
        extend Straddle::Internal::Type::Enum

        OBJECT = :object
        ARRAY = :array
        ERROR = :error
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
