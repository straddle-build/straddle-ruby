# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#create
    class AccountResponse < Straddle::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Straddle::Models::Account]
      required :data, -> { Straddle::Account }

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
      #   @return [Symbol, Straddle::Models::AccountResponse::ResponseType]
      required :response_type, enum: -> { Straddle::AccountResponse::ResponseType }

      # @!method initialize(data:, meta:, response_type:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountResponse} for more details.
      #
      #   @param data [Straddle::Models::Account]
      #
      #   @param meta [Straddle::Models::ResponseMetadata] Metadata for an API request.
      #
      #   @param response_type [Symbol, Straddle::Models::AccountResponse::ResponseType] Indicates how the response content is structured.

      # Indicates how the response content is structured.
      #
      # - `object` means `data` contains one JSON object.
      # - `array` means `data` contains an array of objects.
      # - `error` means `error` contains error details.
      # - `none` means the response has no data.
      #
      # @see Straddle::Models::AccountResponse#response_type
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
