# frozen_string_literal: true

module Straddle
  module Models
    module PaymentStatusReason
      extend Straddle::Internal::Type::Enum

      INSUFFICIENT_FUNDS = :insufficient_funds
      CLOSED_BANK_ACCOUNT = :closed_bank_account
      INVALID_BANK_ACCOUNT = :invalid_bank_account
      INVALID_ROUTING = :invalid_routing
      DISPUTED = :disputed
      PAYMENT_STOPPED = :payment_stopped
      OWNER_DECEASED = :owner_deceased
      FROZEN_BANK_ACCOUNT = :frozen_bank_account
      RISK_REVIEW = :risk_review
      FRAUDULENT = :fraudulent
      DUPLICATE_ENTRY = :duplicate_entry
      INVALID_PAYKEY = :invalid_paykey
      PAYMENT_BLOCKED = :payment_blocked
      AMOUNT_TOO_LARGE = :amount_too_large
      TOO_MANY_ATTEMPTS = :too_many_attempts
      INTERNAL_SYSTEM_ERROR = :internal_system_error
      USER_REQUEST = :user_request
      OK = :ok
      OTHER_NETWORK_RETURN = :other_network_return
      PAYOUT_REFUSED = :payout_refused
      CANCEL_REQUEST = :cancel_request
      FAILED_VERIFICATION = :failed_verification
      REQUIRE_REVIEW = :require_review
      BLOCKED_BY_SYSTEM = :blocked_by_system
      WATCHTOWER_REVIEW = :watchtower_review
      VALIDATING = :validating
      AUTO_HOLD = :auto_hold

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
