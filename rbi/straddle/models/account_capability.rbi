# typed: strong

module Straddle
  module Models
    class AccountCapability < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountCapability, Straddle::Internal::AnyHash)
        end

      # Status of the capability for the account.
      sig do
        returns(Straddle::AccountCapability::CapabilityStatus::TaggedSymbol)
      end
      attr_accessor :capability_status

      sig do
        params(
          capability_status:
            Straddle::AccountCapability::CapabilityStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of the capability for the account.
        capability_status:
      )
      end

      sig do
        override.returns(
          {
            capability_status:
              Straddle::AccountCapability::CapabilityStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Status of the capability for the account.
      module CapabilityStatus
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountCapability::CapabilityStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountCapability::CapabilityStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountCapability::CapabilityStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountCapability::CapabilityStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
