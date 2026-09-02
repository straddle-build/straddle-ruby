# frozen_string_literal: true

module Straddle
  module Models
    module PaymentDocumentType
      extend Straddle::Internal::Type::Enum

      PAYMENT_AUTHORIZATION = :payment_authorization

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
