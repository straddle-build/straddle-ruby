# frozen_string_literal: true

module Straddle
  module Models
    class UnmaskedLinkedBankAccount < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the linked bank account.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   ID of the Straddle account associated with the linked bank account.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute bank_account
      #   Unmasked bank account details.
      #
      #   @return [Straddle::Models::UnmaskedLinkedBankAccountDetails]
      required :bank_account, -> { Straddle::UnmaskedLinkedBankAccountDetails }

      # @!attribute created_at
      #   Date and time when Straddle created the linked bank account.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #   Status of the linked bank account.
      #
      #   @return [Symbol, Straddle::Models::UnmaskedLinkedBankAccount::Status]
      required :status, enum: -> { Straddle::UnmaskedLinkedBankAccount::Status }

      # @!attribute status_detail
      #   Details about the linked bank account's status.
      #
      #   @return [Straddle::Models::LinkedBankAccountStatusDetail]
      required :status_detail, -> { Straddle::LinkedBankAccountStatusDetail }

      # @!attribute updated_at
      #   Date and time of the most recent linked bank account update.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(id:, account_id:, bank_account:, created_at:, status:, status_detail:, updated_at:, metadata: nil)
      #   @param id [String] Straddle's unique ID for the linked bank account.
      #
      #   @param account_id [String] ID of the Straddle account associated with the linked bank account.
      #
      #   @param bank_account [Straddle::Models::UnmaskedLinkedBankAccountDetails] Unmasked bank account details.
      #
      #   @param created_at [Time] Date and time when Straddle created the linked bank account.
      #
      #   @param status [Symbol, Straddle::Models::UnmaskedLinkedBankAccount::Status] Status of the linked bank account.
      #
      #   @param status_detail [Straddle::Models::LinkedBankAccountStatusDetail] Details about the linked bank account's status.
      #
      #   @param updated_at [Time] Date and time of the most recent linked bank account update.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil]

      # Status of the linked bank account.
      #
      # @see Straddle::Models::UnmaskedLinkedBankAccount#status
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
