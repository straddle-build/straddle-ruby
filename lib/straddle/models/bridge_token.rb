# frozen_string_literal: true

module Straddle
  module Models
    class BridgeToken < Straddle::Internal::Type::BaseModel
      # @!attribute bridge_token
      #   JSON Web Token (JWT) for the Bridge widget.
      #
      #   @return [String]
      required :bridge_token, String

      # @!method initialize(bridge_token:)
      #   @param bridge_token [String] JSON Web Token (JWT) for the Bridge widget.
    end
  end
end
