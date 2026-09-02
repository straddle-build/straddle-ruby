# frozen_string_literal: true

module Straddle
  module Models
    class MaskedCustomerDevice < Straddle::Internal::Type::BaseModel
      # @!attribute ip_address
      #   Masked IP address of the customer's device at the time of profile creation.
      #
      #   @return [String]
      required :ip_address, String

      # @!method initialize(ip_address:)
      #   @param ip_address [String] Masked IP address of the customer's device at the time of profile creation.
    end
  end
end
