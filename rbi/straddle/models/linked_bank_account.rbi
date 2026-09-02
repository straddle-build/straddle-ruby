# typed: strong

module Straddle
  module Models
    class LinkedBankAccount < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::LinkedBankAccount, Straddle::Internal::AnyHash)
        end

      # Straddle's unique ID for the linked bank account.
      sig { returns(String) }
      attr_accessor :id

      # ID of the related account, if this is an account-level linked bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      sig { returns(Straddle::MaskedLinkedBankAccountDetails) }
      attr_reader :bank_account

      sig do
        params(
          bank_account: Straddle::MaskedLinkedBankAccountDetails::OrHash
        ).void
      end
      attr_writer :bank_account

      # Date and time when Straddle created the linked bank account.
      sig { returns(Time) }
      attr_accessor :created_at

      # Payment purposes assigned to the linked bank account.
      sig do
        returns(T::Array[Straddle::LinkedBankAccount::Purpose::TaggedSymbol])
      end
      attr_accessor :purposes

      # Status of the linked bank account.
      sig { returns(Straddle::LinkedBankAccount::Status::TaggedSymbol) }
      attr_accessor :status

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

      # Your description for the linked bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # ID of the related platform, if this is a platform-level linked bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :platform_id

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          bank_account: Straddle::MaskedLinkedBankAccountDetails::OrHash,
          created_at: Time,
          purposes: T::Array[Straddle::LinkedBankAccount::Purpose::OrSymbol],
          status: Straddle::LinkedBankAccount::Status::OrSymbol,
          status_detail: Straddle::LinkedBankAccountStatusDetail::OrHash,
          updated_at: Time,
          description: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          platform_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the linked bank account.
        id:,
        # ID of the related account, if this is an account-level linked bank account.
        account_id:,
        bank_account:,
        # Date and time when Straddle created the linked bank account.
        created_at:,
        # Payment purposes assigned to the linked bank account.
        purposes:,
        # Status of the linked bank account.
        status:,
        status_detail:,
        # Date and time of the most recent linked bank account update.
        updated_at:,
        # Your description for the linked bank account.
        description: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # ID of the related platform, if this is a platform-level linked bank account.
        platform_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            bank_account: Straddle::MaskedLinkedBankAccountDetails,
            created_at: Time,
            purposes:
              T::Array[Straddle::LinkedBankAccount::Purpose::TaggedSymbol],
            status: Straddle::LinkedBankAccount::Status::TaggedSymbol,
            status_detail: Straddle::LinkedBankAccountStatusDetail,
            updated_at: Time,
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            platform_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Purpose
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::LinkedBankAccount::Purpose) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(:charges, Straddle::LinkedBankAccount::Purpose::TaggedSymbol)
        PAYOUTS =
          T.let(:payouts, Straddle::LinkedBankAccount::Purpose::TaggedSymbol)
        BILLING =
          T.let(:billing, Straddle::LinkedBankAccount::Purpose::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::LinkedBankAccount::Purpose::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of the linked bank account.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::LinkedBankAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(:created, Straddle::LinkedBankAccount::Status::TaggedSymbol)
        ONBOARDING =
          T.let(:onboarding, Straddle::LinkedBankAccount::Status::TaggedSymbol)
        ACTIVE =
          T.let(:active, Straddle::LinkedBankAccount::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::LinkedBankAccount::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::LinkedBankAccount::Status::TaggedSymbol)
        CANCELED =
          T.let(:canceled, Straddle::LinkedBankAccount::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::LinkedBankAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
