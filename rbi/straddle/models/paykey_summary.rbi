# typed: strong

module Straddle
  module Models
    class PaykeySummary < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeySummary, Straddle::Internal::AnyHash)
        end

      # Unique identifier for the paykey.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Straddle::PaykeyConfiguration) }
      attr_reader :config

      sig { params(config: Straddle::PaykeyConfiguration::OrHash).void }
      attr_writer :config

      # Timestamp of when the paykey was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Display label combining the bank name and masked account number.
      sig { returns(String) }
      attr_accessor :label

      # Masked paykey value.
      sig { returns(String) }
      attr_accessor :paykey

      sig { returns(Straddle::PaykeySource::TaggedSymbol) }
      attr_accessor :source

      sig { returns(Straddle::PaykeyStatus::TaggedSymbol) }
      attr_accessor :status

      # Timestamp of the most recent update to the paykey.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Straddle::PaykeyBankDetails)) }
      attr_reader :bank_data

      sig { params(bank_data: Straddle::PaykeyBankDetails::OrHash).void }
      attr_writer :bank_data

      # Unique identifier for the customer associated with the paykey.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # Expiration date and time of the paykey, if applicable.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Unique identifier for the paykey in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Name of the financial institution.
      sig { returns(T.nilable(String)) }
      attr_accessor :institution_name

      sig { returns(T.nilable(Straddle::PaymentStatusDetails)) }
      attr_reader :status_details

      sig do
        params(status_details: Straddle::PaymentStatusDetails::OrHash).void
      end
      attr_writer :status_details

      # Whether the paykey is eligible for client-initiated unblocking. `true` only when
      # the paykey is blocked by an `R29` return and has not been unblocked before.
      # `false` for other blocked paykeys. `null` when the paykey is not blocked.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unblock_eligible

      sig do
        params(
          id: String,
          config: Straddle::PaykeyConfiguration::OrHash,
          created_at: Time,
          label: String,
          paykey: String,
          source: Straddle::PaykeySource::OrSymbol,
          status: Straddle::PaykeyStatus::OrSymbol,
          updated_at: Time,
          bank_data: Straddle::PaykeyBankDetails::OrHash,
          customer_id: T.nilable(String),
          expires_at: T.nilable(Time),
          external_id: T.nilable(String),
          institution_name: T.nilable(String),
          status_details: Straddle::PaymentStatusDetails::OrHash,
          unblock_eligible: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the paykey.
        id:,
        config:,
        # Timestamp of when the paykey was created.
        created_at:,
        # Display label combining the bank name and masked account number.
        label:,
        # Masked paykey value.
        paykey:,
        source:,
        status:,
        # Timestamp of the most recent update to the paykey.
        updated_at:,
        bank_data: nil,
        # Unique identifier for the customer associated with the paykey.
        customer_id: nil,
        # Expiration date and time of the paykey, if applicable.
        expires_at: nil,
        # Unique identifier for the paykey in your system.
        external_id: nil,
        # Name of the financial institution.
        institution_name: nil,
        status_details: nil,
        # Whether the paykey is eligible for client-initiated unblocking. `true` only when
        # the paykey is blocked by an `R29` return and has not been unblocked before.
        # `false` for other blocked paykeys. `null` when the paykey is not blocked.
        unblock_eligible: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            config: Straddle::PaykeyConfiguration,
            created_at: Time,
            label: String,
            paykey: String,
            source: Straddle::PaykeySource::TaggedSymbol,
            status: Straddle::PaykeyStatus::TaggedSymbol,
            updated_at: Time,
            bank_data: Straddle::PaykeyBankDetails,
            customer_id: T.nilable(String),
            expires_at: T.nilable(Time),
            external_id: T.nilable(String),
            institution_name: T.nilable(String),
            status_details: Straddle::PaymentStatusDetails,
            unblock_eligible: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end
    end
  end
end
