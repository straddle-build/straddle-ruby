# frozen_string_literal: true

module Straddle
  module Models
    class PaykeyEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::PaykeyEventV1WebhookEvent::Data]
      required :data, -> { Straddle::PaykeyEventV1WebhookEvent::Data }

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
      #   @param data [Straddle::Models::PaykeyEventV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::PaykeyEventV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the paykey.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the paykey was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute label
        #   Human-readable label for the paykey.
        #
        #   @return [String]
        required :label, String

        # @!attribute paykey
        #   Full paykey value for creating payments. Store this value securely.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute source
        #
        #   @return [Symbol, Straddle::Models::PaykeySource]
        required :source, enum: -> { Straddle::PaykeySource }

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::PaykeyEventV1WebhookEvent::Data::Status]
        required :status, enum: -> { Straddle::PaykeyEventV1WebhookEvent::Data::Status }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the paykey.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute balance
        #
        #   @return [Straddle::Models::PaykeyEventV1WebhookEvent::Data::Balance, nil]
        optional :balance, -> { Straddle::PaykeyEventV1WebhookEvent::Data::Balance }

        # @!attribute bank_data
        #
        #   @return [Straddle::Models::PaykeyEventV1WebhookEvent::Data::BankData, nil]
        optional :bank_data, -> { Straddle::PaykeyEventV1WebhookEvent::Data::BankData }

        # @!attribute customer_id
        #   Unique identifier for the customer associated with the paykey.
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute expires_at
        #   Expiration date and time of the paykey, if applicable.
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!attribute institution_name
        #   Name of the financial institution.
        #
        #   @return [String, nil]
        optional :institution_name, String, nil?: true

        # @!attribute metadata
        #   Up to 20 user-defined key-value pairs associated with the paykey.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!attribute status_details
        #
        #   @return [Straddle::Models::PaykeyEventV1WebhookEvent::Data::StatusDetails, nil]
        optional :status_details, -> { Straddle::PaykeyEventV1WebhookEvent::Data::StatusDetails }

        # @!method initialize(id:, created_at:, label:, paykey:, source:, status:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, institution_name: nil, metadata: nil, status_details: nil)
        #   @param id [String] Unique identifier for the paykey.
        #
        #   @param created_at [Time] Timestamp of when the paykey was created.
        #
        #   @param label [String] Human-readable label for the paykey.
        #
        #   @param paykey [String] Full paykey value for creating payments. Store this value securely.
        #
        #   @param source [Symbol, Straddle::Models::PaykeySource]
        #
        #   @param status [Symbol, Straddle::Models::PaykeyEventV1WebhookEvent::Data::Status]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
        #
        #   @param balance [Straddle::Models::PaykeyEventV1WebhookEvent::Data::Balance]
        #
        #   @param bank_data [Straddle::Models::PaykeyEventV1WebhookEvent::Data::BankData]
        #
        #   @param customer_id [String, nil] Unique identifier for the customer associated with the paykey.
        #
        #   @param expires_at [Time, nil] Expiration date and time of the paykey, if applicable.
        #
        #   @param institution_name [String, nil] Name of the financial institution.
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs associated with the paykey.
        #
        #   @param status_details [Straddle::Models::PaykeyEventV1WebhookEvent::Data::StatusDetails]

        # @see Straddle::Models::PaykeyEventV1WebhookEvent::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          PENDING = :pending
          ACTIVE = :active
          INACTIVE = :inactive
          REJECTED = :rejected
          REVIEW = :review
          BLOCKED = :blocked

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::PaykeyEventV1WebhookEvent::Data#balance
        class Balance < Straddle::Internal::Type::BaseModel
          # @!attribute status
          #
          #   @return [Symbol, Straddle::Models::PaykeyBalanceRefreshStatus]
          required :status, enum: -> { Straddle::PaykeyBalanceRefreshStatus }

          # @!attribute account_balance
          #   Most recently retrieved account balance in dollars.
          #
          #   @return [Float, nil]
          optional :account_balance, Float, nil?: true

          # @!attribute updated_at
          #   Timestamp of the most recent account balance update.
          #
          #   @return [Time, nil]
          optional :updated_at, Time, nil?: true

          # @!method initialize(status:, account_balance: nil, updated_at: nil)
          #   @param status [Symbol, Straddle::Models::PaykeyBalanceRefreshStatus]
          #
          #   @param account_balance [Float, nil] Most recently retrieved account balance in dollars.
          #
          #   @param updated_at [Time, nil] Timestamp of the most recent account balance update.
        end

        # @see Straddle::Models::PaykeyEventV1WebhookEvent::Data#bank_data
        class BankData < Straddle::Internal::Type::BaseModel
          # @!attribute account_number
          #   Masked bank account number.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute account_type
          #
          #   @return [Symbol, Straddle::Models::AccountType]
          required :account_type, enum: -> { Straddle::AccountType }

          # @!attribute routing_number
          #   Bank routing number.
          #
          #   @return [String]
          required :routing_number, String

          # @!method initialize(account_number:, account_type:, routing_number:)
          #   @param account_number [String] Masked bank account number.
          #
          #   @param account_type [Symbol, Straddle::Models::AccountType]
          #
          #   @param routing_number [String] Bank routing number.
        end

        # @see Straddle::Models::PaykeyEventV1WebhookEvent::Data#status_details
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
          #   @return [Symbol, Straddle::Models::PaykeyEventV1WebhookEvent::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::PaykeyEventV1WebhookEvent::Data::StatusDetails::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::PaymentStatusSource]
          required :source, enum: -> { Straddle::PaymentStatusSource }

          # @!method initialize(changed_at:, code:, message:, reason:, source:)
          #   @param changed_at [Time] The time the status change occurred.
          #
          #   @param code [String, nil] The status code if applicable.
          #
          #   @param message [String] A human-readable description of the current status.
          #
          #   @param reason [Symbol, Straddle::Models::PaykeyEventV1WebhookEvent::Data::StatusDetails::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaymentStatusSource]

          # @see Straddle::Models::PaykeyEventV1WebhookEvent::Data::StatusDetails#reason
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
