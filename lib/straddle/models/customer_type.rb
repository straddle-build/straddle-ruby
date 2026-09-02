# frozen_string_literal: true

module Straddle
  module Models
    module CustomerType
      extend Straddle::Internal::Type::Enum

      INDIVIDUAL = :individual
      BUSINESS = :business

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
