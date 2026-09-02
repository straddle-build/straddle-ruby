# typed: strong

module Straddle
  module Models
    class AccountCustomerCapabilities < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountCustomerCapabilities,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::AccountCapability) }
      attr_reader :businesses

      sig { params(businesses: Straddle::AccountCapability::OrHash).void }
      attr_writer :businesses

      sig { returns(Straddle::AccountCapability) }
      attr_reader :individuals

      sig { params(individuals: Straddle::AccountCapability::OrHash).void }
      attr_writer :individuals

      sig do
        params(
          businesses: Straddle::AccountCapability::OrHash,
          individuals: Straddle::AccountCapability::OrHash
        ).returns(T.attached_class)
      end
      def self.new(businesses:, individuals:)
      end

      sig do
        override.returns(
          {
            businesses: Straddle::AccountCapability,
            individuals: Straddle::AccountCapability
          }
        )
      end
      def to_hash
      end
    end
  end
end
