# typed: strong

module Straddle
  module Models
    class MaskedCustomerDevice < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::MaskedCustomerDevice, Straddle::Internal::AnyHash)
        end

      # Masked IP address of the customer's device at the time of profile creation.
      sig { returns(String) }
      attr_accessor :ip_address

      sig { params(ip_address: String).returns(T.attached_class) }
      def self.new(
        # Masked IP address of the customer's device at the time of profile creation.
        ip_address:
      )
      end

      sig { override.returns({ ip_address: String }) }
      def to_hash
      end
    end
  end
end
