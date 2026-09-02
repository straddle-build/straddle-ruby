# typed: strong

module Straddle
  module Models
    class MaskedPaymentDevice < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::MaskedPaymentDevice, Straddle::Internal::AnyHash)
        end

      # Masked IP address of the device used when the customer authorized the charge or
      # payout.
      sig { returns(String) }
      attr_accessor :ip_address

      sig { params(ip_address: String).returns(T.attached_class) }
      def self.new(
        # Masked IP address of the device used when the customer authorized the charge or
        # payout.
        ip_address:
      )
      end

      sig { override.returns({ ip_address: String }) }
      def to_hash
      end
    end
  end
end
