# frozen_string_literal: true

module Straddle
  module Models
    class ResponseMetadata < Straddle::Internal::Type::BaseModel
      # @!attribute api_request_id
      #   Unique identifier for the API request.
      #
      #   @return [String]
      required :api_request_id, String

      # @!attribute api_request_timestamp
      #   UTC timestamp for the API request.
      #
      #   @return [Time]
      required :api_request_timestamp, Time

      # @!method initialize(api_request_id:, api_request_timestamp:)
      #   Metadata for an API request.
      #
      #   @param api_request_id [String] Unique identifier for the API request.
      #
      #   @param api_request_timestamp [Time] UTC timestamp for the API request.
    end
  end
end
