# typed: strong

module Straddle
  module Models
    class FundingEventEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::FundingEventEventV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::FundingEventEventV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Straddle::FundingEventEventV1WebhookEvent::Data::OrHash
        ).void
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
          data: Straddle::FundingEventEventV1WebhookEvent::Data::OrHash,
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
            data: Straddle::FundingEventEventV1WebhookEvent::Data,
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
              Straddle::FundingEventEventV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
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
        sig do
          returns(
            T::Array[
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory
            ]
          )
        end
        attr_accessor :status_history

        # Network-level trace identifiers assigned during processing. Keys vary by payment
        # rail.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :trace_ids

        # The date the funds transfer was initiated.
        sig { returns(Date) }
        attr_accessor :transfer_date

        # Timestamp when this funding event was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Current status of this funding event.
        sig do
          returns(
            T.nilable(
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Reason, source, and message for the most recent status change.
        sig do
          returns(
            T.nilable(
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails
            )
          )
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::OrHash
          ).void
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
            status_history:
              T::Array[
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::OrHash
              ],
            trace_ids: T::Hash[Symbol, String],
            transfer_date: Date,
            updated_at: Time,
            status:
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::OrSymbol,
            status_details:
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::OrHash
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
          # The date the funds transfer was initiated.
          transfer_date:,
          # Timestamp when this funding event was last updated.
          updated_at:,
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
              status_history:
                T::Array[
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory
                ],
              trace_ids: T::Hash[Symbol, String],
              transfer_date: Date,
              updated_at: Time,
              status:
                Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol,
              status_details:
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails
            }
          )
        end
        def to_hash
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory,
                Straddle::Internal::AnyHash
              )
            end

          # The time the status change occurred.
          sig { returns(Time) }
          attr_accessor :changed_at

          # A human-readable description of the status.
          sig { returns(String) }
          attr_accessor :message

          sig do
            returns(
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig { returns(Straddle::PaymentStatusSource::TaggedSymbol) }
          attr_accessor :source

          sig do
            returns(
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The status code if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          sig do
            params(
              changed_at: Time,
              message: String,
              reason:
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::OrSymbol,
              source: Straddle::PaymentStatusSource::OrSymbol,
              status:
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::OrSymbol,
              code: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The time the status change occurred.
            changed_at:,
            # A human-readable description of the status.
            message:,
            reason:,
            source:,
            status:,
            # The status code if applicable.
            code: nil
          )
          end

          sig do
            override.returns(
              {
                changed_at: Time,
                message: String,
                reason:
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol,
                source: Straddle::PaymentStatusSource::TaggedSymbol,
                status:
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol,
                code: T.nilable(String)
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
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            VALIDATING =
              T.let(
                :validating,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            AUTO_HOLD =
              T.let(
                :auto_hold,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            ON_HOLD =
              T.let(
                :on_hold,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Current status of this funding event.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::FundingEventEventV1WebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::FundingEventEventV1WebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class StatusDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails,
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
              Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig { returns(Straddle::PaymentStatusSource::TaggedSymbol) }
          attr_accessor :source

          # Reason, source, and message for the most recent status change.
          sig do
            params(
              changed_at: Time,
              code: T.nilable(String),
              message: String,
              reason:
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::OrSymbol,
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
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol,
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
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            VALIDATING =
              T.let(
                :validating,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AUTO_HOLD =
              T.let(
                :auto_hold,
                Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::FundingEventEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
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
