# frozen_string_literal: true

module Straddle
  module Models
    class PaykeyBalanceDetails < Straddle::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::PaykeyBalanceRefreshStatus]
      required :status, enum: -> { Straddle::PaykeyBalanceRefreshStatus }

      # @!attribute account_balance
      #   Most recently retrieved account balance in cents.
      #
      #   @return [Integer, nil]
      optional :account_balance, Integer, nil?: true

      # @!attribute updated_at
      #   Timestamp of the most recent account balance update.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(status:, account_balance: nil, updated_at: nil)
      #   @param status [Symbol, Straddle::Models::PaykeyBalanceRefreshStatus]
      #
      #   @param account_balance [Integer, nil] Most recently retrieved account balance in cents.
      #
      #   @param updated_at [Time, nil] Timestamp of the most recent account balance update.
    end
  end
end
