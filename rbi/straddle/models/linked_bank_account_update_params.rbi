# typed: strong

module Straddle
  module Models
    class LinkedBankAccountUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::LinkedBankAccountUpdateParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :linked_bank_account_id

      sig { returns(Straddle::LinkedBankAccountUpdateParams::BankAccount) }
      attr_reader :bank_account

      sig do
        params(
          bank_account:
            Straddle::LinkedBankAccountUpdateParams::BankAccount::OrHash
        ).void
      end
      attr_writer :bank_account

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated key for an idempotent request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          linked_bank_account_id: String,
          bank_account:
            Straddle::LinkedBankAccountUpdateParams::BankAccount::OrHash,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        linked_bank_account_id:,
        bank_account:,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            linked_bank_account_id: String,
            bank_account: Straddle::LinkedBankAccountUpdateParams::BankAccount,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BankAccount < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::LinkedBankAccountUpdateParams::BankAccount,
              Straddle::Internal::AnyHash
            )
          end

        # Account holder name as it appears on the bank account. This is usually the
        # business's legal name.
        sig { returns(String) }
        attr_accessor :account_holder

        # The bank account number.
        sig { returns(String) }
        attr_accessor :account_number

        # Nine-digit ABA routing number.
        sig { returns(String) }
        attr_accessor :routing_number

        sig do
          params(
            account_holder: String,
            account_number: String,
            routing_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Account holder name as it appears on the bank account. This is usually the
          # business's legal name.
          account_holder:,
          # The bank account number.
          account_number:,
          # Nine-digit ABA routing number.
          routing_number:
        )
        end

        sig do
          override.returns(
            {
              account_holder: String,
              account_number: String,
              routing_number: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
