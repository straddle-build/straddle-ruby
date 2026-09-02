# frozen_string_literal: true

module Straddle
  module Models
    class FundingEvent < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this funding event.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Total funding event amount in the smallest currency unit. For example, `1000` is
      #   $10.00 USD.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   Timestamp when this funding event was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute direction
      #   Transfer direction relative to the linked bank account. `deposit` moves funds
      #   into the account, and `withdrawal` moves funds out.
      #
      #   @return [Symbol, Straddle::Models::FundingEventTransferDirection]
      required :direction, enum: -> { Straddle::FundingEventTransferDirection }

      # @!attribute event_type
      #   Reason for the funding event. `charge_deposit` settles collected charges to the
      #   linked bank account. `charge_reversal` withdraws funds for reversed charges.
      #   `payout_withdrawal` withdraws funds for payouts. `payout_return` deposits
      #   returned payout funds.
      #
      #   @return [Symbol, Straddle::Models::FundingEventType]
      required :event_type, enum: -> { Straddle::FundingEventType }

      # @!attribute payment_count
      #   Number of payments included in this funding event.
      #
      #   @return [Integer]
      required :payment_count, Integer

      # @!attribute status_history
      #   Complete ordered history of all status changes for this funding event.
      #
      #   @return [Array<Straddle::Models::PaymentStatusHistory>]
      required :status_history, -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentStatusHistory] }

      # @!attribute trace_ids
      #   Network-level trace identifiers assigned during processing. Keys vary by payment
      #   rail.
      #
      #   @return [Hash{Symbol=>String}]
      required :trace_ids, Straddle::Internal::Type::HashOf[String]

      # @!attribute trace_numbers
      #   Network trace numbers associated with payments in this funding event.
      #
      #   @return [Array<String>]
      required :trace_numbers, Straddle::Internal::Type::ArrayOf[String]

      # @!attribute transfer_date
      #   The date the funds transfer was initiated.
      #
      #   @return [Date]
      required :transfer_date, Date

      # @!attribute updated_at
      #   Timestamp when this funding event was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute config
      #   Configuration used to process this funding event.
      #
      #   @return [Straddle::Models::FundingEventConfiguration, nil]
      optional :config, -> { Straddle::FundingEventConfiguration }

      # @!attribute linked_bank_account_details
      #   Details of the linked bank account used for this funding event.
      #
      #   @return [Straddle::Models::UnmaskedLinkedBankAccountDetails, nil]
      optional :linked_bank_account_details, -> { Straddle::UnmaskedLinkedBankAccountDetails }

      # @!attribute status
      #   Current status of this funding event.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus, nil]
      optional :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute status_details
      #   Reason, source, and message for the most recent status change.
      #
      #   @return [Straddle::Models::PaymentStatusDetails, nil]
      optional :status_details, -> { Straddle::PaymentStatusDetails }

      # @!method initialize(id:, amount:, created_at:, direction:, event_type:, payment_count:, status_history:, trace_ids:, trace_numbers:, transfer_date:, updated_at:, config: nil, linked_bank_account_details: nil, status: nil, status_details: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::FundingEvent} for more details.
      #
      #   @param id [String] Unique identifier for this funding event.
      #
      #   @param amount [Integer] Total funding event amount in the smallest currency unit. For example, `1000` is
      #
      #   @param created_at [Time] Timestamp when this funding event was created.
      #
      #   @param direction [Symbol, Straddle::Models::FundingEventTransferDirection] Transfer direction relative to the linked bank account. `deposit` moves funds in
      #
      #   @param event_type [Symbol, Straddle::Models::FundingEventType] Reason for the funding event. `charge_deposit` settles collected charges to the
      #
      #   @param payment_count [Integer] Number of payments included in this funding event.
      #
      #   @param status_history [Array<Straddle::Models::PaymentStatusHistory>] Complete ordered history of all status changes for this funding event.
      #
      #   @param trace_ids [Hash{Symbol=>String}] Network-level trace identifiers assigned during processing. Keys vary by payment
      #
      #   @param trace_numbers [Array<String>] Network trace numbers associated with payments in this funding event.
      #
      #   @param transfer_date [Date] The date the funds transfer was initiated.
      #
      #   @param updated_at [Time] Timestamp when this funding event was last updated.
      #
      #   @param config [Straddle::Models::FundingEventConfiguration] Configuration used to process this funding event.
      #
      #   @param linked_bank_account_details [Straddle::Models::UnmaskedLinkedBankAccountDetails] Details of the linked bank account used for this funding event.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] Current status of this funding event.
      #
      #   @param status_details [Straddle::Models::PaymentStatusDetails] Reason, source, and message for the most recent status change.
    end
  end
end
