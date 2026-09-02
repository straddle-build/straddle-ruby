# frozen_string_literal: true

module Straddle
  module Models
    class CustomerDevice < Straddle::Internal::Type::BaseModel
      # @!attribute ip_address
      #   Customer IP address at profile creation. `0.0.0.0` represents an offline
      #   registration.
      #
      #   @return [String]
      required :ip_address, String

      # @!method initialize(ip_address:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CustomerDevice} for more details.
      #
      #   @param ip_address [String] Customer IP address at profile creation. `0.0.0.0` represents an offline registr
    end
  end
end
