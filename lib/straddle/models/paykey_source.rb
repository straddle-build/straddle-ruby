# frozen_string_literal: true

module Straddle
  module Models
    module PaykeySource
      extend Straddle::Internal::Type::Enum

      BANK_ACCOUNT = :bank_account
      STRADDLE = :straddle
      MX = :mx
      PLAID = :plaid
      TAN = :tan
      QUILTT = :quiltt

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
