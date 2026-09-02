# frozen_string_literal: true

module Straddle
  module Models
    module PaymentStatusSource
      extend Straddle::Internal::Type::Enum

      WATCHTOWER = :watchtower
      BANK_DECLINE = :bank_decline
      CUSTOMER_DISPUTE = :customer_dispute
      USER_ACTION = :user_action
      SYSTEM = :system

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
