# frozen_string_literal: true

module Straddle
  module Models
    class ChargeEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::ChargeEventV1WebhookEvent::Data]
      required :data, -> { Straddle::ChargeEventV1WebhookEvent::Data }

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
      #   @param data [Straddle::Models::ChargeEventV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::ChargeEventV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for this charge.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Amount in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute config
        #
        #   @return [Straddle::Models::ChargeEventV1WebhookEvent::Data::Config]
        required :config, -> { Straddle::ChargeEventV1WebhookEvent::Data::Config }

        # @!attribute consent_type
        #
        #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::ConsentType]
        required :consent_type, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::ConsentType }

        # @!attribute currency
        #   Currency code. Only `USD` is supported.
        #
        #   @return [String]
        required :currency, String

        # @!attribute description
        #   A human-readable description of the charge.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute device
        #
        #   @return [Straddle::Models::MaskedPaymentDevice]
        required :device, -> { Straddle::MaskedPaymentDevice }

        # @!attribute funding_ids
        #   IDs of the funding events that included this charge.
        #
        #   @return [Array<String>]
        required :funding_ids, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute has_refund
        #   Whether an associated payout has refunded this charge.
        #
        #   @return [Boolean]
        required :has_refund, Straddle::Internal::Type::Boolean

        # @!attribute has_resubmit
        #   Whether this charge has been resubmitted.
        #
        #   @return [Boolean]
        required :has_resubmit, Straddle::Internal::Type::Boolean

        # @!attribute is_resubmit
        #   Whether this charge resubmits an original charge.
        #
        #   @return [Boolean]
        required :is_resubmit, Straddle::Internal::Type::Boolean

        # @!attribute paykey
        #   The masked paykey token used for this charge.
        #
        #   @return [String]
        required :paykey, String

        # @!attribute payment_date
        #   Date when Straddle submits the charge for processing.
        #
        #   @return [Date]
        required :payment_date, Date

        # @!attribute status
        #
        #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::Status]
        required :status, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::Status }

        # @!attribute status_details
        #
        #   @return [Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusDetails]
        required :status_details, -> { Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails }

        # @!attribute status_history
        #   Complete ordered history of all status changes for this charge.
        #
        #   @return [Array<Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory>]
        required :status_history,
                 -> do
                   Straddle::Internal::Type::ArrayOf[Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory]
                 end

        # @!attribute created_at
        #   Timestamp when this charge was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, nil?: true

        # @!attribute customer_details
        #
        #   @return [Straddle::Models::ChargeEventV1WebhookEvent::Data::CustomerDetails, nil]
        optional :customer_details, -> { Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails }

        # @!attribute documents
        #   Authorization documents for this charge, ordered by upload time.
        #
        #   @return [Array<Straddle::Models::PaymentAuthorizationProof>, nil]
        optional :documents,
                 -> { Straddle::Internal::Type::ArrayOf[Straddle::PaymentAuthorizationProof] },
                 nil?: true

        # @!attribute effective_at
        #   Timestamp when funds were settled. Null until settlement is confirmed.
        #
        #   @return [Time, nil]
        optional :effective_at, Time, nil?: true

        # @!attribute external_id
        #   Your unique identifier for this charge, used to correlate with your internal
        #   records.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Key-value metadata stored with this charge.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!attribute paykey_details
        #
        #   @return [Straddle::Models::ChargeEventV1WebhookEvent::Data::PaykeyDetails, nil]
        optional :paykey_details, -> { Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails }

        # @!attribute payment_rail
        #
        #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::PaymentRail, nil]
        optional :payment_rail, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail }

        # @!attribute processed_at
        #   Timestamp when this charge was submitted to the payment network. Null until
        #   processed.
        #
        #   @return [Time, nil]
        optional :processed_at, Time, nil?: true

        # @!attribute related_payments
        #   Related payments and their relationship to this charge.
        #
        #   @return [Array<Straddle::Models::RelatedPayment>, nil]
        optional :related_payments,
                 -> { Straddle::Internal::Type::ArrayOf[Straddle::RelatedPayment] },
                 nil?: true

        # @!attribute updated_at
        #   Timestamp when this charge was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, nil?: true

        # @!method initialize(id:, amount:, config:, consent_type:, currency:, description:, device:, funding_ids:, has_refund:, has_resubmit:, is_resubmit:, paykey:, payment_date:, status:, status_details:, status_history:, created_at: nil, customer_details: nil, documents: nil, effective_at: nil, external_id: nil, metadata: nil, paykey_details: nil, payment_rail: nil, processed_at: nil, related_payments: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::ChargeEventV1WebhookEvent::Data} for more details.
        #
        #   @param id [String] Unique identifier for this charge.
        #
        #   @param amount [Integer] Amount in cents.
        #
        #   @param config [Straddle::Models::ChargeEventV1WebhookEvent::Data::Config]
        #
        #   @param consent_type [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::ConsentType]
        #
        #   @param currency [String] Currency code. Only `USD` is supported.
        #
        #   @param description [String, nil] A human-readable description of the charge.
        #
        #   @param device [Straddle::Models::MaskedPaymentDevice]
        #
        #   @param funding_ids [Array<String>] IDs of the funding events that included this charge.
        #
        #   @param has_refund [Boolean] Whether an associated payout has refunded this charge.
        #
        #   @param has_resubmit [Boolean] Whether this charge has been resubmitted.
        #
        #   @param is_resubmit [Boolean] Whether this charge resubmits an original charge.
        #
        #   @param paykey [String] The masked paykey token used for this charge.
        #
        #   @param payment_date [Date] Date when Straddle submits the charge for processing.
        #
        #   @param status [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::Status]
        #
        #   @param status_details [Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusDetails]
        #
        #   @param status_history [Array<Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory>] Complete ordered history of all status changes for this charge.
        #
        #   @param created_at [Time, nil] Timestamp when this charge was created.
        #
        #   @param customer_details [Straddle::Models::ChargeEventV1WebhookEvent::Data::CustomerDetails]
        #
        #   @param documents [Array<Straddle::Models::PaymentAuthorizationProof>, nil] Authorization documents for this charge, ordered by upload time.
        #
        #   @param effective_at [Time, nil] Timestamp when funds were settled. Null until settlement is confirmed.
        #
        #   @param external_id [String, nil] Your unique identifier for this charge, used to correlate with your internal rec
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Key-value metadata stored with this charge.
        #
        #   @param paykey_details [Straddle::Models::ChargeEventV1WebhookEvent::Data::PaykeyDetails]
        #
        #   @param payment_rail [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::PaymentRail]
        #
        #   @param processed_at [Time, nil] Timestamp when this charge was submitted to the payment network. Null until proc
        #
        #   @param related_payments [Array<Straddle::Models::RelatedPayment>, nil] Related payments and their relationship to this charge.
        #
        #   @param updated_at [Time, nil] Timestamp when this charge was last updated.

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#config
        class Config < Straddle::Internal::Type::BaseModel
          # @!attribute balance_check
          #
          #   @return [Symbol, Straddle::Models::BalanceCheckMode]
          required :balance_check, enum: -> { Straddle::BalanceCheckMode }

          # @!method initialize(balance_check:)
          #   @param balance_check [Symbol, Straddle::Models::BalanceCheckMode]
        end

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#consent_type
        module ConsentType
          extend Straddle::Internal::Type::Enum

          INTERNET = :internet
          SIGNED = :signed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#status
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

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#status_details
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
          #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason]
          required :reason, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason }

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
          #   @param reason [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaymentStatusSource]

          # @see Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusDetails#reason
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
          #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason]
          required :reason, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason }

          # @!attribute source
          #
          #   @return [Symbol, Straddle::Models::PaymentStatusSource]
          required :source, enum: -> { Straddle::PaymentStatusSource }

          # @!attribute status
          #
          #   @return [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory::Status]
          required :status, enum: -> { Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status }

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
          #   @param reason [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason]
          #
          #   @param source [Symbol, Straddle::Models::PaymentStatusSource]
          #
          #   @param status [Symbol, Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory::Status]
          #
          #   @param code [String, nil] The status code if applicable.

          # @see Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory#reason
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

          # @see Straddle::Models::ChargeEventV1WebhookEvent::Data::StatusHistory#status
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

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#customer_details
        class CustomerDetails < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the customer.
          #
          #   @return [String]
          required :id, String

          # @!attribute customer_type
          #   Whether the customer is an individual or a business.
          #
          #   @return [Symbol, Straddle::Models::CustomerType]
          required :customer_type, enum: -> { Straddle::CustomerType }

          # @!attribute email
          #   Customer's email address.
          #
          #   @return [String]
          required :email, String

          # @!attribute name
          #   Customer's full name or business name.
          #
          #   @return [String]
          required :name, String

          # @!attribute phone
          #   Customer's phone number in E.164 format.
          #
          #   @return [String]
          required :phone, String

          # @!method initialize(id:, customer_type:, email:, name:, phone:)
          #   @param id [String] Unique identifier for the customer.
          #
          #   @param customer_type [Symbol, Straddle::Models::CustomerType] Whether the customer is an individual or a business.
          #
          #   @param email [String] Customer's email address.
          #
          #   @param name [String] Customer's full name or business name.
          #
          #   @param phone [String] Customer's phone number in E.164 format.
        end

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#paykey_details
        class PaykeyDetails < Straddle::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the paykey.
          #
          #   @return [String]
          required :id, String

          # @!attribute customer_id
          #   Unique identifier for the customer associated with the paykey.
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute label
          #   Display label combining the bank name and masked account number.
          #
          #   @return [String]
          required :label, String

          # @!attribute balance
          #   Available balance in cents when a balance check was performed. Null otherwise.
          #
          #   @return [Integer, nil]
          optional :balance, Integer, nil?: true

          # @!method initialize(id:, customer_id:, label:, balance: nil)
          #   @param id [String] Unique identifier for the paykey.
          #
          #   @param customer_id [String] Unique identifier for the customer associated with the paykey.
          #
          #   @param label [String] Display label combining the bank name and masked account number.
          #
          #   @param balance [Integer, nil] Available balance in cents when a balance check was performed. Null otherwise.
        end

        # @see Straddle::Models::ChargeEventV1WebhookEvent::Data#payment_rail
        module PaymentRail
          extend Straddle::Internal::Type::Enum

          ACH = :ach

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
