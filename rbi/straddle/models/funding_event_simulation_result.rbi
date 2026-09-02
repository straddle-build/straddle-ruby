# typed: strong

module Straddle
  module Models
    class FundingEventSimulationResult < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventSimulationResult,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the created funding event.
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # Unique identifier for the created funding event.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
