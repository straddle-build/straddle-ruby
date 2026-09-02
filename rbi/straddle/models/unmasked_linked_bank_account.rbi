# typed: strong

module Straddle
  module Models
    class UnmaskedLinkedBankAccount < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::UnmaskedLinkedBankAccount,
            Straddle::Internal::AnyHash
          )
        end

      # Straddle's unique ID for the linked bank account.
      sig { returns(String) }
      attr_accessor :id

      # ID of the Straddle account associated with the linked bank account.
      sig { returns(String) }
      attr_accessor :account_id

      # Unmasked bank account details.
      sig { returns(Straddle::UnmaskedLinkedBankAccountDetails) }
      attr_reader :bank_account

      sig do
        params(
          bank_account: Straddle::UnmaskedLinkedBankAccountDetails::OrHash
        ).void
      end
      attr_writer :bank_account

      # Date and time when Straddle created the linked bank account.
      sig { returns(Time) }
      attr_accessor :created_at

      # Status of the linked bank account.
      sig { returns(Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol) }
      attr_accessor :status

      # Details about the linked bank account's status.
      sig { returns(Straddle::LinkedBankAccountStatusDetail) }
      attr_reader :status_detail

      sig do
        params(
          status_detail: Straddle::LinkedBankAccountStatusDetail::OrHash
        ).void
      end
      attr_writer :status_detail

      # Date and time of the most recent linked bank account update.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          id: String,
          account_id: String,
          bank_account: Straddle::UnmaskedLinkedBankAccountDetails::OrHash,
          created_at: Time,
          status: Straddle::UnmaskedLinkedBankAccount::Status::OrSymbol,
          status_detail: Straddle::LinkedBankAccountStatusDetail::OrHash,
          updated_at: Time,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the linked bank account.
        id:,
        # ID of the Straddle account associated with the linked bank account.
        account_id:,
        # Unmasked bank account details.
        bank_account:,
        # Date and time when Straddle created the linked bank account.
        created_at:,
        # Status of the linked bank account.
        status:,
        # Details about the linked bank account's status.
        status_detail:,
        # Date and time of the most recent linked bank account update.
        updated_at:,
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            bank_account: Straddle::UnmaskedLinkedBankAccountDetails,
            created_at: Time,
            status: Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol,
            status_detail: Straddle::LinkedBankAccountStatusDetail,
            updated_at: Time,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
          }
        )
      end
      def to_hash
      end

      # Status of the linked bank account.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::UnmaskedLinkedBankAccount::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )
        ONBOARDING =
          T.let(
            :onboarding,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::UnmaskedLinkedBankAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
