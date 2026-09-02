# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::LinkedBankAccounts#update
    class LinkedBankAccountUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute linked_bank_account_id
      #
      #   @return [String]
      required :linked_bank_account_id, String

      # @!attribute bank_account
      #
      #   @return [Straddle::Models::LinkedBankAccountUpdateParams::BankAccount]
      required :bank_account, -> { Straddle::LinkedBankAccountUpdateParams::BankAccount }

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

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

      # @!method initialize(linked_bank_account_id:, bank_account:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param linked_bank_account_id [String]
      #
      #   @param bank_account [Straddle::Models::LinkedBankAccountUpdateParams::BankAccount]
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
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
        #   {Straddle::Models::LinkedBankAccountUpdateParams::BankAccount} for more details.
        #
        #   @param account_holder [String] Account holder name as it appears on the bank account. This is usually the busin
        #
        #   @param account_number [String] The bank account number.
        #
        #   @param routing_number [String] Nine-digit ABA routing number.
      end
    end
  end
end
