# frozen_string_literal: true

module Straddle
  module Models
    class AccountCustomerTypeSettings < Straddle::Internal::Type::BaseModel
      # @!attribute businesses
      #   Status of business-customer support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountCustomerTypeSettings::Businesses]
      required :businesses, enum: -> { Straddle::AccountCustomerTypeSettings::Businesses }

      # @!attribute individuals
      #   Status of individual-customer support for the account.
      #
      #   @return [Symbol, Straddle::Models::AccountCustomerTypeSettings::Individuals]
      required :individuals, enum: -> { Straddle::AccountCustomerTypeSettings::Individuals }

      # @!method initialize(businesses:, individuals:)
      #   @param businesses [Symbol, Straddle::Models::AccountCustomerTypeSettings::Businesses] Status of business-customer support for the account.
      #
      #   @param individuals [Symbol, Straddle::Models::AccountCustomerTypeSettings::Individuals] Status of individual-customer support for the account.

      # Status of business-customer support for the account.
      #
      # @see Straddle::Models::AccountCustomerTypeSettings#businesses
      module Businesses
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of individual-customer support for the account.
      #
      # @see Straddle::Models::AccountCustomerTypeSettings#individuals
      module Individuals
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
