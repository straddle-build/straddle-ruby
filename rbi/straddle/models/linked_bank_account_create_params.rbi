# typed: strong

module Straddle
  module Models
    class LinkedBankAccountCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::LinkedBankAccountCreateParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(Straddle::LinkedBankAccountCreateParams::BankAccount) }
      attr_reader :bank_account

      sig do
        params(
          bank_account:
            Straddle::LinkedBankAccountCreateParams::BankAccount::OrHash
        ).void
      end
      attr_writer :bank_account

      # ID of the account that will own the linked bank account. Omit this field to
      # assign ownership to the platform in the authenticated request context.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # Your description for the linked bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # ID of the platform to associate with the linked bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :platform_id

      # Payment purposes for the linked bank account. Defaults to `charges`, `payouts`,
      # and `billing`.
      sig do
        returns(
          T.nilable(
            T::Array[Straddle::LinkedBankAccountCreateParams::Purpose::OrSymbol]
          )
        )
      end
      attr_accessor :purposes

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
          bank_account:
            Straddle::LinkedBankAccountCreateParams::BankAccount::OrHash,
          account_id: T.nilable(String),
          description: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          platform_id: T.nilable(String),
          purposes:
            T.nilable(
              T::Array[
                Straddle::LinkedBankAccountCreateParams::Purpose::OrSymbol
              ]
            ),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        bank_account:,
        # ID of the account that will own the linked bank account. Omit this field to
        # assign ownership to the platform in the authenticated request context.
        account_id: nil,
        # Your description for the linked bank account.
        description: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # ID of the platform to associate with the linked bank account.
        platform_id: nil,
        # Payment purposes for the linked bank account. Defaults to `charges`, `payouts`,
        # and `billing`.
        purposes: nil,
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
            bank_account: Straddle::LinkedBankAccountCreateParams::BankAccount,
            account_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            platform_id: T.nilable(String),
            purposes:
              T.nilable(
                T::Array[
                  Straddle::LinkedBankAccountCreateParams::Purpose::OrSymbol
                ]
              ),
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
              Straddle::LinkedBankAccountCreateParams::BankAccount,
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

      module Purpose
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountCreateParams::Purpose)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(
            :charges,
            Straddle::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
          )
        PAYOUTS =
          T.let(
            :payouts,
            Straddle::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
          )
        BILLING =
          T.let(
            :billing,
            Straddle::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountCreateParams::Purpose::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
