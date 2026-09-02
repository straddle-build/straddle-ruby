# typed: strong

module Straddle
  module Models
    class CustomerDevice < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerDevice, Straddle::Internal::AnyHash)
        end

      # Customer IP address at profile creation. `0.0.0.0` represents an offline
      # registration.
      sig { returns(String) }
      attr_accessor :ip_address

      sig { params(ip_address: String).returns(T.attached_class) }
      def self.new(
        # Customer IP address at profile creation. `0.0.0.0` represents an offline
        # registration.
        ip_address:
      )
      end

      sig { override.returns({ ip_address: String }) }
      def to_hash
      end
    end
  end
end
