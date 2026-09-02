# frozen_string_literal: true

module Straddle
  module Models
    class MaskedPaymentDevice < Straddle::Internal::Type::BaseModel
      # @!attribute ip_address
      #   Masked IP address of the device used when the customer authorized the charge or
      #   payout.
      #
      #   @return [String]
      required :ip_address, String

      # @!method initialize(ip_address:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::MaskedPaymentDevice} for more details.
      #
      #   @param ip_address [String] Masked IP address of the device used when the customer authorized the charge or
    end
  end
end
