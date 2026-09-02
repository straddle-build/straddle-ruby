# typed: strong

module Straddle
  module Models
    class PaykeyCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::PaykeyCreatedV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::PaykeyCreatedV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::PaykeyCreatedV1WebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Unique identifier for this event.
      sig { returns(String) }
      attr_accessor :event_id

      # Type of this event.
      sig { returns(String) }
      attr_accessor :event_type

      sig do
        params(
          account_id: String,
          data: Straddle::PaykeyCreatedV1WebhookEvent::Data::OrHash,
          event_id: String,
          event_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the account associated with this event.
        account_id:,
        data:,
        # Unique identifier for this event.
        event_id:,
        # Type of this event.
        event_type:
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            data: Straddle::PaykeyCreatedV1WebhookEvent::Data,
            event_id: String,
            event_type: String
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::PaykeyCreatedV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the paykey.
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the paykey was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Human-readable label for the paykey.
        sig { returns(String) }
        attr_accessor :label

        # Full paykey value for creating payments. Store this value securely.
        sig { returns(String) }
        attr_accessor :paykey

        sig { returns(Straddle::PaykeySource::TaggedSymbol) }
        attr_accessor :source

        sig do
          returns(
            Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp of the most recent update to the paykey.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(
            T.nilable(Straddle::PaykeyCreatedV1WebhookEvent::Data::Balance)
          )
        end
        attr_reader :balance

        sig do
          params(
            balance:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Balance::OrHash
          ).void
        end
        attr_writer :balance

        sig do
          returns(
            T.nilable(Straddle::PaykeyCreatedV1WebhookEvent::Data::BankData)
          )
        end
        attr_reader :bank_data

        sig do
          params(
            bank_data:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::BankData::OrHash
          ).void
        end
        attr_writer :bank_data

        # Unique identifier for the customer associated with the paykey.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # Expiration date and time of the paykey, if applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Name of the financial institution.
        sig { returns(T.nilable(String)) }
        attr_accessor :institution_name

        # Up to 20 user-defined key-value pairs associated with the paykey.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig do
          returns(
            T.nilable(
              Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails
            )
          )
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        sig do
          params(
            id: String,
            created_at: Time,
            label: String,
            paykey: String,
            source: Straddle::PaykeySource::OrSymbol,
            status:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::OrSymbol,
            updated_at: Time,
            balance:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Balance::OrHash,
            bank_data:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::BankData::OrHash,
            customer_id: T.nilable(String),
            expires_at: T.nilable(Time),
            institution_name: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            status_details:
              Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the paykey.
          id:,
          # Timestamp of when the paykey was created.
          created_at:,
          # Human-readable label for the paykey.
          label:,
          # Full paykey value for creating payments. Store this value securely.
          paykey:,
          source:,
          status:,
          # Timestamp of the most recent update to the paykey.
          updated_at:,
          balance: nil,
          bank_data: nil,
          # Unique identifier for the customer associated with the paykey.
          customer_id: nil,
          # Expiration date and time of the paykey, if applicable.
          expires_at: nil,
          # Name of the financial institution.
          institution_name: nil,
          # Up to 20 user-defined key-value pairs associated with the paykey.
          metadata: nil,
          status_details: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              label: String,
              paykey: String,
              source: Straddle::PaykeySource::TaggedSymbol,
              status:
                Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol,
              updated_at: Time,
              balance: Straddle::PaykeyCreatedV1WebhookEvent::Data::Balance,
              bank_data: Straddle::PaykeyCreatedV1WebhookEvent::Data::BankData,
              customer_id: T.nilable(String),
              expires_at: T.nilable(Time),
              institution_name: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              status_details:
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails
            }
          )
        end
        def to_hash
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::PaykeyCreatedV1WebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          BLOCKED =
            T.let(
              :blocked,
              Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PaykeyCreatedV1WebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Balance < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyCreatedV1WebhookEvent::Data::Balance,
                Straddle::Internal::AnyHash
              )
            end

          sig { returns(Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol) }
          attr_accessor :status

          # Most recently retrieved account balance in dollars.
          sig { returns(T.nilable(Float)) }
          attr_accessor :account_balance

          # Timestamp of the most recent account balance update.
          sig { returns(T.nilable(Time)) }
          attr_accessor :updated_at

          sig do
            params(
              status: Straddle::PaykeyBalanceRefreshStatus::OrSymbol,
              account_balance: T.nilable(Float),
              updated_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            status:,
            # Most recently retrieved account balance in dollars.
            account_balance: nil,
            # Timestamp of the most recent account balance update.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                status: Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol,
                account_balance: T.nilable(Float),
                updated_at: T.nilable(Time)
              }
            )
          end
          def to_hash
          end
        end

        class BankData < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyCreatedV1WebhookEvent::Data::BankData,
                Straddle::Internal::AnyHash
              )
            end

          # Masked bank account number.
          sig { returns(String) }
          attr_accessor :account_number

          sig { returns(Straddle::AccountType::TaggedSymbol) }
          attr_accessor :account_type

          # Bank routing number.
          sig { returns(String) }
          attr_accessor :routing_number

          sig do
            params(
              account_number: String,
              account_type: Straddle::AccountType::OrSymbol,
              routing_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Masked bank account number.
            account_number:,
            account_type:,
            # Bank routing number.
            routing_number:
          )
          end

          sig do
            override.returns(
              {
                account_number: String,
                account_type: Straddle::AccountType::TaggedSymbol,
                routing_number: String
              }
            )
          end
          def to_hash
          end
        end

        class StatusDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails,
                Straddle::Internal::AnyHash
              )
            end

          # The time the status change occurred.
          sig { returns(Time) }
          attr_accessor :changed_at

          # The status code if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          # A human-readable description of the current status.
          sig { returns(String) }
          attr_accessor :message

          sig do
            returns(
              Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig { returns(Straddle::PaymentStatusSource::TaggedSymbol) }
          attr_accessor :source

          sig do
            params(
              changed_at: Time,
              code: T.nilable(String),
              message: String,
              reason:
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::OrSymbol,
              source: Straddle::PaymentStatusSource::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The time the status change occurred.
            changed_at:,
            # The status code if applicable.
            code:,
            # A human-readable description of the current status.
            message:,
            reason:,
            source:
          )
          end

          sig do
            override.returns(
              {
                changed_at: Time,
                code: T.nilable(String),
                message: String,
                reason:
                  Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol,
                source: Straddle::PaymentStatusSource::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Reason
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            VALIDATING =
              T.let(
                :validating,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AUTO_HOLD =
              T.let(
                :auto_hold,
                Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PaykeyCreatedV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
