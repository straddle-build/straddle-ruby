# frozen_string_literal: true

module Straddle
  module Models
    class LinkedBankAccount < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the linked bank account.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   ID of the related account, if this is an account-level linked bank account.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute bank_account
      #
      #   @return [Straddle::Models::MaskedLinkedBankAccountDetails]
      required :bank_account, -> { Straddle::MaskedLinkedBankAccountDetails }

      # @!attribute created_at
      #   Date and time when Straddle created the linked bank account.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute purposes
      #   Payment purposes assigned to the linked bank account.
      #
      #   @return [Array<Symbol, Straddle::Models::LinkedBankAccount::Purpose>]
      required :purposes, -> { Straddle::Internal::Type::ArrayOf[enum: Straddle::LinkedBankAccount::Purpose] }

      # @!attribute status
      #   Status of the linked bank account.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccount::Status]
      required :status, enum: -> { Straddle::LinkedBankAccount::Status }

      # @!attribute status_detail
      #
      #   @return [Straddle::Models::LinkedBankAccountStatusDetail]
      required :status_detail, -> { Straddle::LinkedBankAccountStatusDetail }

      # @!attribute updated_at
      #   Date and time of the most recent linked bank account update.
      #
      #   @return [Time]
      required :updated_at, Time

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
      #   ID of the related platform, if this is a platform-level linked bank account.
      #
      #   @return [String, nil]
      optional :platform_id, String, nil?: true

      # @!method initialize(id:, account_id:, bank_account:, created_at:, purposes:, status:, status_detail:, updated_at:, description: nil, metadata: nil, platform_id: nil)
      #   @param id [String] Straddle's unique ID for the linked bank account.
      #
      #   @param account_id [String, nil] ID of the related account, if this is an account-level linked bank account.
      #
      #   @param bank_account [Straddle::Models::MaskedLinkedBankAccountDetails]
      #
      #   @param created_at [Time] Date and time when Straddle created the linked bank account.
      #
      #   @param purposes [Array<Symbol, Straddle::Models::LinkedBankAccount::Purpose>] Payment purposes assigned to the linked bank account.
      #
      #   @param status [Symbol, Straddle::Models::LinkedBankAccount::Status] Status of the linked bank account.
      #
      #   @param status_detail [Straddle::Models::LinkedBankAccountStatusDetail]
      #
      #   @param updated_at [Time] Date and time of the most recent linked bank account update.
      #
      #   @param description [String, nil] Your description for the linked bank account.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param platform_id [String, nil] ID of the related platform, if this is a platform-level linked bank account.

      module Purpose
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts
        BILLING = :billing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the linked bank account.
      #
      # @see Straddle::Models::LinkedBankAccount#status
      module Status
        extend Straddle::Internal::Type::Enum

        CREATED = :created
        ONBOARDING = :onboarding
        ACTIVE = :active
        REJECTED = :rejected
        INACTIVE = :inactive
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
