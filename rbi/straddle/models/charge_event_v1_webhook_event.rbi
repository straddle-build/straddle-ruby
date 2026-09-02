# typed: strong

module Straddle
  module Models
    class ChargeEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::ChargeEventV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::ChargeEventV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::ChargeEventV1WebhookEvent::Data::OrHash).void
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
          data: Straddle::ChargeEventV1WebhookEvent::Data::OrHash,
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
            data: Straddle::ChargeEventV1WebhookEvent::Data,
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
              Straddle::ChargeEventV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for this charge.
        sig { returns(String) }
        attr_accessor :id

        # Amount in cents.
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Straddle::ChargeEventV1WebhookEvent::Data::Config) }
        attr_reader :config

        sig do
          params(
            config: Straddle::ChargeEventV1WebhookEvent::Data::Config::OrHash
          ).void
        end
        attr_writer :config

        sig do
          returns(
            Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::TaggedSymbol
          )
        end
        attr_accessor :consent_type

        # Currency code. Only `USD` is supported.
        sig { returns(String) }
        attr_accessor :currency

        # A human-readable description of the charge.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(Straddle::MaskedPaymentDevice) }
        attr_reader :device

        sig { params(device: Straddle::MaskedPaymentDevice::OrHash).void }
        attr_writer :device

        # IDs of the funding events that included this charge.
        sig { returns(T::Array[String]) }
        attr_accessor :funding_ids

        # Whether an associated payout has refunded this charge.
        sig { returns(T::Boolean) }
        attr_accessor :has_refund

        # Whether this charge has been resubmitted.
        sig { returns(T::Boolean) }
        attr_accessor :has_resubmit

        # Whether this charge resubmits an original charge.
        sig { returns(T::Boolean) }
        attr_accessor :is_resubmit

        # The masked paykey token used for this charge.
        sig { returns(String) }
        attr_accessor :paykey

        # Date when Straddle submits the charge for processing.
        sig { returns(Date) }
        attr_accessor :payment_date

        sig do
          returns(
            Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails)
        end
        attr_reader :status_details

        sig do
          params(
            status_details:
              Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::OrHash
          ).void
        end
        attr_writer :status_details

        # Complete ordered history of all status changes for this charge.
        sig do
          returns(
            T::Array[Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory]
          )
        end
        attr_accessor :status_history

        # Timestamp when this charge was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(
              Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails
            )
          )
        end
        attr_reader :customer_details

        sig do
          params(
            customer_details:
              Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails::OrHash
          ).void
        end
        attr_writer :customer_details

        # Authorization documents for this charge, ordered by upload time.
        sig do
          returns(T.nilable(T::Array[Straddle::PaymentAuthorizationProof]))
        end
        attr_accessor :documents

        # Timestamp when funds were settled. Null until settlement is confirmed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :effective_at

        # Your unique identifier for this charge, used to correlate with your internal
        # records.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Key-value metadata stored with this charge.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig do
          returns(
            T.nilable(Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails)
          )
        end
        attr_reader :paykey_details

        sig do
          params(
            paykey_details:
              Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails::OrHash
          ).void
        end
        attr_writer :paykey_details

        sig do
          returns(
            T.nilable(
              Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::TaggedSymbol
            )
          )
        end
        attr_reader :payment_rail

        sig do
          params(
            payment_rail:
              Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::OrSymbol
          ).void
        end
        attr_writer :payment_rail

        # Timestamp when this charge was submitted to the payment network. Null until
        # processed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :processed_at

        # Related payments and their relationship to this charge.
        sig { returns(T.nilable(T::Array[Straddle::RelatedPayment])) }
        attr_accessor :related_payments

        # Timestamp when this charge was last updated.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            amount: Integer,
            config: Straddle::ChargeEventV1WebhookEvent::Data::Config::OrHash,
            consent_type:
              Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::OrSymbol,
            currency: String,
            description: T.nilable(String),
            device: Straddle::MaskedPaymentDevice::OrHash,
            funding_ids: T::Array[String],
            has_refund: T::Boolean,
            has_resubmit: T::Boolean,
            is_resubmit: T::Boolean,
            paykey: String,
            payment_date: Date,
            status: Straddle::ChargeEventV1WebhookEvent::Data::Status::OrSymbol,
            status_details:
              Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::OrHash,
            status_history:
              T::Array[
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::OrHash
              ],
            created_at: T.nilable(Time),
            customer_details:
              Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails::OrHash,
            documents:
              T.nilable(T::Array[Straddle::PaymentAuthorizationProof::OrHash]),
            effective_at: T.nilable(Time),
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            paykey_details:
              Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails::OrHash,
            payment_rail:
              Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::OrSymbol,
            processed_at: T.nilable(Time),
            related_payments:
              T.nilable(T::Array[Straddle::RelatedPayment::OrHash]),
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for this charge.
          id:,
          # Amount in cents.
          amount:,
          config:,
          consent_type:,
          # Currency code. Only `USD` is supported.
          currency:,
          # A human-readable description of the charge.
          description:,
          device:,
          # IDs of the funding events that included this charge.
          funding_ids:,
          # Whether an associated payout has refunded this charge.
          has_refund:,
          # Whether this charge has been resubmitted.
          has_resubmit:,
          # Whether this charge resubmits an original charge.
          is_resubmit:,
          # The masked paykey token used for this charge.
          paykey:,
          # Date when Straddle submits the charge for processing.
          payment_date:,
          status:,
          status_details:,
          # Complete ordered history of all status changes for this charge.
          status_history:,
          # Timestamp when this charge was created.
          created_at: nil,
          customer_details: nil,
          # Authorization documents for this charge, ordered by upload time.
          documents: nil,
          # Timestamp when funds were settled. Null until settlement is confirmed.
          effective_at: nil,
          # Your unique identifier for this charge, used to correlate with your internal
          # records.
          external_id: nil,
          # Key-value metadata stored with this charge.
          metadata: nil,
          paykey_details: nil,
          payment_rail: nil,
          # Timestamp when this charge was submitted to the payment network. Null until
          # processed.
          processed_at: nil,
          # Related payments and their relationship to this charge.
          related_payments: nil,
          # Timestamp when this charge was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              config: Straddle::ChargeEventV1WebhookEvent::Data::Config,
              consent_type:
                Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::TaggedSymbol,
              currency: String,
              description: T.nilable(String),
              device: Straddle::MaskedPaymentDevice,
              funding_ids: T::Array[String],
              has_refund: T::Boolean,
              has_resubmit: T::Boolean,
              is_resubmit: T::Boolean,
              paykey: String,
              payment_date: Date,
              status:
                Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol,
              status_details:
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails,
              status_history:
                T::Array[
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory
                ],
              created_at: T.nilable(Time),
              customer_details:
                Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails,
              documents:
                T.nilable(T::Array[Straddle::PaymentAuthorizationProof]),
              effective_at: T.nilable(Time),
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              paykey_details:
                Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails,
              payment_rail:
                Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::TaggedSymbol,
              processed_at: T.nilable(Time),
              related_payments: T.nilable(T::Array[Straddle::RelatedPayment]),
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        class Config < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeEventV1WebhookEvent::Data::Config,
                Straddle::Internal::AnyHash
              )
            end

          sig { returns(Straddle::BalanceCheckMode::TaggedSymbol) }
          attr_accessor :balance_check

          sig do
            params(balance_check: Straddle::BalanceCheckMode::OrSymbol).returns(
              T.attached_class
            )
          end
          def self.new(balance_check:)
          end

          sig do
            override.returns(
              { balance_check: Straddle::BalanceCheckMode::TaggedSymbol }
            )
          end
          def to_hash
          end
        end

        module ConsentType
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::ChargeEventV1WebhookEvent::Data::ConsentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNET =
            T.let(
              :internet,
              Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::TaggedSymbol
            )
          SIGNED =
            T.let(
              :signed,
              Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::ChargeEventV1WebhookEvent::Data::ConsentType::TaggedSymbol
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
              T.all(Symbol, Straddle::ChargeEventV1WebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::ChargeEventV1WebhookEvent::Data::Status::TaggedSymbol
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
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails,
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
              Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
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
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::OrSymbol,
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
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol,
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
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            VALIDATING =
              T.let(
                :validating,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )
            AUTO_HOLD =
              T.let(
                :auto_hold,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusDetails::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class StatusHistory < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory,
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
              Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          sig { returns(Straddle::PaymentStatusSource::TaggedSymbol) }
          attr_accessor :source

          sig do
            returns(
              Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
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
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::OrSymbol,
              source: Straddle::PaymentStatusSource::OrSymbol,
              status:
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::OrSymbol,
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
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol,
                source: Straddle::PaymentStatusSource::TaggedSymbol,
                status:
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol,
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
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            CLOSED_BANK_ACCOUNT =
              T.let(
                :closed_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT =
              T.let(
                :invalid_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_ROUTING =
              T.let(
                :invalid_routing,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            DISPUTED =
              T.let(
                :disputed,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OWNER_DECEASED =
              T.let(
                :owner_deceased,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            FROZEN_BANK_ACCOUNT =
              T.let(
                :frozen_bank_account,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            RISK_REVIEW =
              T.let(
                :risk_review,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            FRAUDULENT =
              T.let(
                :fraudulent,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INVALID_PAYKEY =
              T.let(
                :invalid_paykey,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYMENT_BLOCKED =
              T.let(
                :payment_blocked,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            AMOUNT_TOO_LARGE =
              T.let(
                :amount_too_large,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            TOO_MANY_ATTEMPTS =
              T.let(
                :too_many_attempts,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            INTERNAL_SYSTEM_ERROR =
              T.let(
                :internal_system_error,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            USER_REQUEST =
              T.let(
                :user_request,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OK =
              T.let(
                :ok,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            OTHER_NETWORK_RETURN =
              T.let(
                :other_network_return,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            PAYOUT_REFUSED =
              T.let(
                :payout_refused,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            VALIDATING =
              T.let(
                :validating,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )
            AUTO_HOLD =
              T.let(
                :auto_hold,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Reason::TaggedSymbol
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
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            ON_HOLD =
              T.let(
                :on_hold,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )
            REVERSED =
              T.let(
                :reversed,
                Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::ChargeEventV1WebhookEvent::Data::StatusHistory::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CustomerDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeEventV1WebhookEvent::Data::CustomerDetails,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the customer.
          sig { returns(String) }
          attr_accessor :id

          # Whether the customer is an individual or a business.
          sig { returns(Straddle::CustomerType::TaggedSymbol) }
          attr_accessor :customer_type

          # Customer's email address.
          sig { returns(String) }
          attr_accessor :email

          # Customer's full name or business name.
          sig { returns(String) }
          attr_accessor :name

          # Customer's phone number in E.164 format.
          sig { returns(String) }
          attr_accessor :phone

          sig do
            params(
              id: String,
              customer_type: Straddle::CustomerType::OrSymbol,
              email: String,
              name: String,
              phone: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the customer.
            id:,
            # Whether the customer is an individual or a business.
            customer_type:,
            # Customer's email address.
            email:,
            # Customer's full name or business name.
            name:,
            # Customer's phone number in E.164 format.
            phone:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_type: Straddle::CustomerType::TaggedSymbol,
                email: String,
                name: String,
                phone: String
              }
            )
          end
          def to_hash
          end
        end

        class PaykeyDetails < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::ChargeEventV1WebhookEvent::Data::PaykeyDetails,
                Straddle::Internal::AnyHash
              )
            end

          # Unique identifier for the paykey.
          sig { returns(String) }
          attr_accessor :id

          # Unique identifier for the customer associated with the paykey.
          sig { returns(String) }
          attr_accessor :customer_id

          # Display label combining the bank name and masked account number.
          sig { returns(String) }
          attr_accessor :label

          # Available balance in cents when a balance check was performed. Null otherwise.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :balance

          sig do
            params(
              id: String,
              customer_id: String,
              label: String,
              balance: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the paykey.
            id:,
            # Unique identifier for the customer associated with the paykey.
            customer_id:,
            # Display label combining the bank name and masked account number.
            label:,
            # Available balance in cents when a balance check was performed. Null otherwise.
            balance: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_id: String,
                label: String,
                balance: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        module PaymentRail
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACH =
            T.let(
              :ach,
              Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::ChargeEventV1WebhookEvent::Data::PaymentRail::TaggedSymbol
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
