# frozen_string_literal: true

module Straddle
  module Models
    class AccountChargeSettings < Straddle::Internal::Type::BaseModel
      # @!attribute daily_amount
      #   Daily charge amount limit in cents.
      #
      #   @return [Integer]
      required :daily_amount, Integer

      # @!attribute funding_time
      #   Funding schedule for charges. Straddle sets this value.
      #
      #   @return [Symbol, Straddle::Models::AccountChargeSettings::FundingTime]
      required :funding_time, enum: -> { Straddle::AccountChargeSettings::FundingTime }

      # @!attribute linked_bank_account_id
      #   ID of the linked bank account used for charge settlement. Straddle sets this
      #   value.
      #
      #   @return [String]
      required :linked_bank_account_id, String

      # @!attribute max_amount
      #   Maximum amount in cents for one charge.
      #
      #   @return [Integer]
      required :max_amount, Integer

      # @!attribute monthly_amount
      #   Monthly charge amount limit in cents.
      #
      #   @return [Integer]
      required :monthly_amount, Integer

      # @!attribute monthly_count
      #   Maximum number of charges per calendar month.
      #
      #   @return [Integer]
      required :monthly_count, Integer

      # @!method initialize(daily_amount:, funding_time:, linked_bank_account_id:, max_amount:, monthly_amount:, monthly_count:)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountChargeSettings} for more details.
      #
      #   @param daily_amount [Integer] Daily charge amount limit in cents.
      #
      #   @param funding_time [Symbol, Straddle::Models::AccountChargeSettings::FundingTime] Funding schedule for charges. Straddle sets this value.
      #
      #   @param linked_bank_account_id [String] ID of the linked bank account used for charge settlement. Straddle sets this val
      #
      #   @param max_amount [Integer] Maximum amount in cents for one charge.
      #
      #   @param monthly_amount [Integer] Monthly charge amount limit in cents.
      #
      #   @param monthly_count [Integer] Maximum number of charges per calendar month.

      # Funding schedule for charges. Straddle sets this value.
      #
      # @see Straddle::Models::AccountChargeSettings#funding_time
      module FundingTime
        extend Straddle::Internal::Type::Enum

        IMMEDIATE = :immediate
        NEXT_DAY = :next_day
        ONE_DAY = :one_day
        TWO_DAY = :two_day
        THREE_DAY = :three_day
        FOUR_DAY = :four_day
        FIVE_DAY = :five_day

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
