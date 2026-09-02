# frozen_string_literal: true

module Straddle
  module Models
    class AccountCustomerCapabilities < Straddle::Internal::Type::BaseModel
      # @!attribute businesses
      #
      #   @return [Straddle::Models::AccountCapability]
      required :businesses, -> { Straddle::AccountCapability }

      # @!attribute individuals
      #
      #   @return [Straddle::Models::AccountCapability]
      required :individuals, -> { Straddle::AccountCapability }

      # @!method initialize(businesses:, individuals:)
      #   @param businesses [Straddle::Models::AccountCapability]
      #   @param individuals [Straddle::Models::AccountCapability]
    end
  end
end
