# typed: strong

module Straddle
  module Models
    class BridgeToken < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::BridgeToken, Straddle::Internal::AnyHash)
        end

      # JSON Web Token (JWT) for the Bridge widget.
      sig { returns(String) }
      attr_accessor :bridge_token

      sig { params(bridge_token: String).returns(T.attached_class) }
      def self.new(
        # JSON Web Token (JWT) for the Bridge widget.
        bridge_token:
      )
      end

      sig { override.returns({ bridge_token: String }) }
      def to_hash
      end
    end
  end
end
