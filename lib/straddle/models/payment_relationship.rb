# frozen_string_literal: true

module Straddle
  module Models
    module PaymentRelationship
      extend Straddle::Internal::Type::Enum

      ORIGINAL = :original
      RESUBMIT = :resubmit
      REFUND = :refund

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
