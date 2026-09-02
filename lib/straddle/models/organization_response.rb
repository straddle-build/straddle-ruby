# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Organizations#create
    class OrganizationResponse < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::Organization]
      required :data, -> { Straddle::Organization }

      # @!attribute meta
      #   Metadata for an API request.
      #
      #   @return [Straddle::Models::ResponseMetadata]
      required :meta, -> { Straddle::ResponseMetadata }

      # @!attribute response_type
      #   Indicates how the response content is structured.
      #
      #   - `object` means `data` contains one JSON object.
      #   - `array` means `data` contains an array of objects.
      #   - `error` means `error` contains error details.
      #   - `none` means the response has no data.
      #
      #   @return [Symbol, Straddle::Models::OrganizationResponse::ResponseType]
      required :response_type, enum: -> { Straddle::OrganizationResponse::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::OrganizationResponse} for more details.
      #
      #   @param data [Straddle::Models::Organization]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata for an API request.
      #
      #   @param response_type [Symbol, Straddle::Models::OrganizationResponse::ResponseType] Indicates how the response content is structured.

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      #
      # @see Straddle::Models::OrganizationResponse#response_type
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
