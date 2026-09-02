# frozen_string_literal: true

module Straddle
  module Models
    # Shape of the response envelope.
    #
    # - `object` means `data` contains one JSON object.
    # - `array` means `data` contains an array of JSON objects.
    # - `error` means `error` contains the error details.
    # - `none` means the response contains no data.
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
