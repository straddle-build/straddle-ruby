# typed: strong

module Straddle
  module Models
    class FundingEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::FundingEvent, Straddle::Internal::AnyHash)
        end

      # Unique identifier for this funding event.
      sig { returns(String) }
      attr_accessor :id

      # Total funding event amount in the smallest currency unit. For example, `1000` is
      # $10.00 USD.
      sig { returns(Integer) }
      attr_accessor :amount

      # Timestamp when this funding event was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Transfer direction relative to the linked bank account. `deposit` moves funds
      # into the account, and `withdrawal` moves funds out.
      sig { returns(Straddle::FundingEventTransferDirection::TaggedSymbol) }
      attr_accessor :direction

      # Reason for the funding event. `charge_deposit` settles collected charges to the
      # linked bank account. `charge_reversal` withdraws funds for reversed charges.
      # `payout_withdrawal` withdraws funds for payouts. `payout_return` deposits
      # returned payout funds.
      sig { returns(Straddle::FundingEventType::TaggedSymbol) }
      attr_accessor :event_type

      # Number of payments included in this funding event.
      sig { returns(Integer) }
      attr_accessor :payment_count

      # Complete ordered history of all status changes for this funding event.
      sig { returns(T::Array[Straddle::PaymentStatusHistory]) }
      attr_accessor :status_history

      # Network-level trace identifiers assigned during processing. Keys vary by payment
      # rail.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :trace_ids

      # Network trace numbers associated with payments in this funding event.
      sig { returns(T::Array[String]) }
      attr_accessor :trace_numbers

      # The date the funds transfer was initiated.
      sig { returns(Date) }
      attr_accessor :transfer_date

      # Timestamp when this funding event was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Configuration used to process this funding event.
      sig { returns(T.nilable(Straddle::FundingEventConfiguration)) }
      attr_reader :config

      sig { params(config: Straddle::FundingEventConfiguration::OrHash).void }
      attr_writer :config

      # Details of the linked bank account used for this funding event.
      sig { returns(T.nilable(Straddle::UnmaskedLinkedBankAccountDetails)) }
      attr_reader :linked_bank_account_details

      sig do
        params(
          linked_bank_account_details:
            Straddle::UnmaskedLinkedBankAccountDetails::OrHash
        ).void
      end
      attr_writer :linked_bank_account_details

      # Current status of this funding event.
      sig { returns(T.nilable(Straddle::PaymentStatus::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Straddle::PaymentStatus::OrSymbol).void }
      attr_writer :status

      # Reason, source, and message for the most recent status change.
      sig { returns(T.nilable(Straddle::PaymentStatusDetails)) }
      attr_reader :status_details

      sig do
        params(status_details: Straddle::PaymentStatusDetails::OrHash).void
      end
      attr_writer :status_details

      sig do
        params(
          id: String,
          amount: Integer,
          created_at: Time,
          direction: Straddle::FundingEventTransferDirection::OrSymbol,
          event_type: Straddle::FundingEventType::OrSymbol,
          payment_count: Integer,
          status_history: T::Array[Straddle::PaymentStatusHistory::OrHash],
          trace_ids: T::Hash[Symbol, String],
          trace_numbers: T::Array[String],
          transfer_date: Date,
          updated_at: Time,
          config: Straddle::FundingEventConfiguration::OrHash,
          linked_bank_account_details:
            Straddle::UnmaskedLinkedBankAccountDetails::OrHash,
          status: Straddle::PaymentStatus::OrSymbol,
          status_details: Straddle::PaymentStatusDetails::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this funding event.
        id:,
        # Total funding event amount in the smallest currency unit. For example, `1000` is
        # $10.00 USD.
        amount:,
        # Timestamp when this funding event was created.
        created_at:,
        # Transfer direction relative to the linked bank account. `deposit` moves funds
        # into the account, and `withdrawal` moves funds out.
        direction:,
        # Reason for the funding event. `charge_deposit` settles collected charges to the
        # linked bank account. `charge_reversal` withdraws funds for reversed charges.
        # `payout_withdrawal` withdraws funds for payouts. `payout_return` deposits
        # returned payout funds.
        event_type:,
        # Number of payments included in this funding event.
        payment_count:,
        # Complete ordered history of all status changes for this funding event.
        status_history:,
        # Network-level trace identifiers assigned during processing. Keys vary by payment
        # rail.
        trace_ids:,
        # Network trace numbers associated with payments in this funding event.
        trace_numbers:,
        # The date the funds transfer was initiated.
        transfer_date:,
        # Timestamp when this funding event was last updated.
        updated_at:,
        # Configuration used to process this funding event.
        config: nil,
        # Details of the linked bank account used for this funding event.
        linked_bank_account_details: nil,
        # Current status of this funding event.
        status: nil,
        # Reason, source, and message for the most recent status change.
        status_details: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Integer,
            created_at: Time,
            direction: Straddle::FundingEventTransferDirection::TaggedSymbol,
            event_type: Straddle::FundingEventType::TaggedSymbol,
            payment_count: Integer,
            status_history: T::Array[Straddle::PaymentStatusHistory],
            trace_ids: T::Hash[Symbol, String],
            trace_numbers: T::Array[String],
            transfer_date: Date,
            updated_at: Time,
            config: Straddle::FundingEventConfiguration,
            linked_bank_account_details:
              Straddle::UnmaskedLinkedBankAccountDetails,
            status: Straddle::PaymentStatus::TaggedSymbol,
            status_details: Straddle::PaymentStatusDetails
          }
        )
      end
      def to_hash
      end
    end
  end
end
