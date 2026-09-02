# frozen_string_literal: true

module Straddle
  module Models
    class FundingEventEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::FundingEventEventV1WebhookEvent::Data]
      required :data, -> { Straddle::FundingEventEventV1WebhookEvent::Data }

      # @!attribute event_id
      #   Unique identifier for this event.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   Type of this event.
      #
      #   @return [String]
      required :event_type, String

      # @!method initialize(account_id:, data:, event_id:, event_type:)
      #   @param account_id [String] Unique identifier for the account associated with this event.
      #
      #   @param data [Straddle::Models::FundingEventEventV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::FundingEventEventV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
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
        #   @return [Array<Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory>]
        required :status_history,
                 -> do
                   Straddle::Internal::Type::ArrayOf[
                     Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory
                   ]
                 end

        # @!attribute trace_ids
        #   Network-level trace identifiers assigned during processing. Keys vary by payment
        #   rail.
        #
        #   @return [Hash{Symbol=>String}]
        required :trace_ids, Straddle::Internal::Type::HashOf[String]

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

        # @!attribute status
        #   Current status of this funding event.
        #
        #   @return [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::Status, nil]
        optional :status, enum: -> { Straddle::FundingEventEventV1WebhookEvent::Data::Status }

        # @!attribute status_details
        #   Reason, source, and message for the most recent status change.
        #
        #   @return [Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails }

        # @!method initialize(id:, amount:, created_at:, direction:, event_type:, payment_count:, status_history:, trace_ids:, transfer_date:, updated_at:, status: nil, status_details: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::FundingEventEventV1WebhookEvent::Data} for more details.
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
        #   @param status_history [Array<Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory>] Complete ordered history of all status changes for this funding event.
        #
        #   @param trace_ids [Hash{Symbol=>String}] Network-level trace identifiers assigned during processing. Keys vary by payment
        #
        #   @param transfer_date [Date] The date the funds transfer was initiated.
        #
        #   @param updated_at [Time] Timestamp when this funding event was last updated.
        #
        #   @param status [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::Status] Current status of this funding event.
        #
        #   @param status_details [Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusDetails] Reason, source, and message for the most recent status change.

        class StatusHistory < Straddle::Internal::Type::BaseModel
          # @!attribute changed_at
          #   The time the status change occurred.
          #
          #   @return [Time]
          required :changed_at, Time

          # @!attribute message
          #   A human-readable description of the status.
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #
          #   @return [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason]
          required :reason,
                   enum: -> { Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::PaymentStatusSource]
          required :source, enum: -> { Straddle::PaymentStatusSource }

          # @!attribute status
          #
          #   @return [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status]
          required :status,
                   enum: -> { Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status }

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          optional :code, String, nil?: true

          # @!method initialize(changed_at:, message:, reason:, source:, status:, code: nil)
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param message [String] A human-readable description of the status.
          #
          #   @param reason [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaymentStatusSource]
          #
          #   @param status [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status]
          #
          #   @param code [String, nil] The status code if applicable.

          # @see Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory#reason
          module Reason
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
            VALIDATING = :validating
            AUTO_HOLD = :auto_hold

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusHistory#status
          module Status
            extend Straddle::Internal::Type::Enum

            CREATED = :created
            SCHEDULED = :scheduled
            FAILED = :failed
            CANCELLED = :cancelled
            ON_HOLD = :on_hold
            PENDING = :pending
            PAID = :paid
            REVERSED = :reversed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Current status of this funding event.
        #
        # @see Straddle::Models::FundingEventEventV1WebhookEvent::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          CREATED = :created
          SCHEDULED = :scheduled
          FAILED = :failed
          CANCELLED = :cancelled
          ON_HOLD = :on_hold
          PENDING = :pending
          PAID = :paid
          REVERSED = :reversed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::FundingEventEventV1WebhookEvent::Data#status_details
        class StatusDetails < Straddle::Internal::Type::BaseModel
          # @!attribute changed_at
          #   The time the status change occurred.
          #
          #   @return [Time]
          required :changed_at, Time

          # @!attribute code
          #   The status code if applicable.
          #
          #   @return [String, nil]
          required :code, String, nil?: true

          # @!attribute message
          #   A human-readable description of the current status.
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #
          #   @return [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason]
          required :reason,
                   enum: -> { Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::PaymentStatusSource]
          required :source, enum: -> { Straddle::PaymentStatusSource }

          # @!method initialize(changed_at:, code:, message:, reason:, source:)
          #   Reason, source, and message for the most recent status change.
          #
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param code [String, nil] The status code if applicable.
          #
          #   @param message [String] A human-readable description of the current status.
          #
          #   @param reason [Symbol, Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaymentStatusSource]

          # @see Straddle::Models::FundingEventEventV1WebhookEvent::Data::StatusDetails#reason
          module Reason
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
            VALIDATING = :validating
            AUTO_HOLD = :auto_hold

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
