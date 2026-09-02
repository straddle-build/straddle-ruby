# frozen_string_literal: true

module Straddle
  module Models
    class AccountCapability < Straddle::Internal::Type::BaseModel
      # @!attribute capability_status
      #   Status of the capability for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountCapability::CapabilityStatus]
      required :capability_status, enum: -> { Straddle::AccountCapability::CapabilityStatus }

      # @!method initialize(capability_status:)
      #   @param capability_status [Symbol, Straddle::Models::AccountCapability::CapabilityStatus] Status of the capability for the account.

      # Status of the capability for the account.
      #
      # @see Straddle::Models::AccountCapability#capability_status
      module CapabilityStatus
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
