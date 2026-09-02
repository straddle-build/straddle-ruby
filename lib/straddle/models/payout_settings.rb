# frozen_string_literal: true

module Straddle
  module Models
    class PayoutSettings < Straddle::Internal::Type::BaseModel
      # @!attribute daily_amount
      #   Daily payout amount limit in cents.
      #
      #   @return [Integer]
      required :daily_amount, Integer

      # @!attribute max_amount
      #   Maximum amount in cents for one payout.
      #
      #   @return [Integer]
      required :max_amount, Integer

      # @!attribute monthly_amount
      #   Monthly payout amount limit in cents.
      #
      #   @return [Integer]
      required :monthly_amount, Integer

      # @!attribute monthly_count
      #   Maximum number of payouts per calendar month.
      #
      #   @return [Integer]
      required :monthly_count, Integer

      # @!attribute funding_time
      #   Funding schedule applied to payouts.
      #
      #   @return [String, nil]
      optional :funding_time, String, nil?: true

      # @!attribute linked_bank_account_id
      #   ID of the linked bank account used for payout settlement.
      #
      #   @return [String, nil]
      optional :linked_bank_account_id, String, nil?: true

      # @!method initialize(daily_amount:, max_amount:, monthly_amount:, monthly_count:, funding_time: nil, linked_bank_account_id: nil)
      #   @param daily_amount [Integer] Daily payout amount limit in cents.
      #
      #   @param max_amount [Integer] Maximum amount in cents for one payout.
      #
      #   @param monthly_amount [Integer] Monthly payout amount limit in cents.
      #
      #   @param monthly_count [Integer] Maximum number of payouts per calendar month.
      #
      #   @param funding_time [String, nil] Funding schedule applied to payouts.
      #
      #   @param linked_bank_account_id [String, nil] ID of the linked bank account used for payout settlement.
    end
  end
end
