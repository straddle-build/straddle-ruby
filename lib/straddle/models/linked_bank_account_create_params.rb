# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::LinkedBankAccounts#create
    class LinkedBankAccountCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute bank_account
      #
      #   @return [Straddle::Models::LinkedBankAccountCreateParams::BankAccount]
      required :bank_account, -> { Straddle::LinkedBankAccountCreateParams::BankAccount }

      # @!attribute account_id
      #   ID of the account that will own the linked bank account. Omit this field to
      #   assign ownership to the platform in the authenticated request context.
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute description
      #   Your description for the linked bank account.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute platform_id
      #   ID of the platform to associate with the linked bank account.
      #
      #   @return [String, nil]
      optional :platform_id, String, nil?: true

      # @!attribute purposes
      #   Payment purposes for the linked bank account. Defaults to `charges`, `payouts`,
      #   and `billing`.
      #
      #   @return [Array<Symbol, Straddle::Models::LinkedBankAccountCreateParams::Purpose>, nil]
      optional :purposes,
               -> do
                 Straddle::Internal::Type::ArrayOf[enum: Straddle::LinkedBankAccountCreateParams::Purpose]
               end,
               nil?: true

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute idempotency_key
      #   Optional client-generated key for an idempotent request.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!method initialize(bank_account:, account_id: nil, description: nil, metadata: nil, platform_id: nil, purposes: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::LinkedBankAccountCreateParams} for more details.
      #
      #   @param bank_account [Straddle::Models::LinkedBankAccountCreateParams::BankAccount]
      #
      #   @param account_id [String, nil] ID of the account that will own the linked bank account. Omit this field to assi
      #
      #   @param description [String, nil] Your description for the linked bank account.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param platform_id [String, nil] ID of the platform to associate with the linked bank account.
      #
      #   @param purposes [Array<Symbol, Straddle::Models::LinkedBankAccountCreateParams::Purpose>, nil] Payment purposes for the linked bank account. Defaults to `charges`, `payouts`,
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      class BankAccount < Straddle::Internal::Type::BaseModel
        # @!attribute account_holder
        #   Account holder name as it appears on the bank account. This is usually the
        #   business's legal name.
        #
        #   @return [String]
        required :account_holder, String

        # @!attribute account_number
        #   The bank account number.
        #
        #   @return [String]
        required :account_number, String

        # @!attribute routing_number
        #   Nine-digit ABA routing number.
        #
        #   @return [String]
        required :routing_number, String

        # @!method initialize(account_holder:, account_number:, routing_number:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::LinkedBankAccountCreateParams::BankAccount} for more details.
        #
        #   @param account_holder [String] Account holder name as it appears on the bank account. This is usually the busin
        #
        #   @param account_number [String] The bank account number.
        #
        #   @param routing_number [String] Nine-digit ABA routing number.
      end

      module Purpose
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts
        BILLING = :billing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
