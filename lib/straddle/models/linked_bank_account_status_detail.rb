# frozen_string_literal: true

module Straddle
  module Models
    class LinkedBankAccountStatusDetail < Straddle::Internal::Type::BaseModel
      # @!attribute code
      #   Machine-readable status code from the source.
      #
      #   @return [String]
      required :code, String

      # @!attribute message
      #   Human-readable description of the linked bank account's status.
      #
      #   @return [String]
      required :message, String

      # @!attribute reason
      #   Machine-readable reason for the linked bank account's status.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountStatusDetail::Reason]
      required :reason, enum: -> { Straddle::LinkedBankAccountStatusDetail::Reason }

      # @!attribute source
      #   System that produced the linked bank account status detail.
      #
      #   @return [Symbol, Straddle::Models::LinkedBankAccountStatusDetail::Source]
      required :source, enum: -> { Straddle::LinkedBankAccountStatusDetail::Source }

      # @!method initialize(code:, message:, reason:, source:)
      #   @param code [String] Machine-readable status code from the source.
      #
      #   @param message [String] Human-readable description of the linked bank account's status.
      #
      #   @param reason [Symbol, Straddle::Models::LinkedBankAccountStatusDetail::Reason] Machine-readable reason for the linked bank account's status.
      #
      #   @param source [Symbol, Straddle::Models::LinkedBankAccountStatusDetail::Source] System that produced the linked bank account status detail.

      # Machine-readable reason for the linked bank account's status.
      #
      # @see Straddle::Models::LinkedBankAccountStatusDetail#reason
      module Reason
        extend Straddle::Internal::Type::Enum

        UNVERIFIED = :unverified
        IN_REVIEW = :in_review
        PENDING = :pending
        STUCK = :stuck
        VERIFIED = :verified
        FAILED_VERIFICATION = :failed_verification
        DISABLED = :disabled
        NEW = :new

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # System that produced the linked bank account status detail.
      #
      # @see Straddle::Models::LinkedBankAccountStatusDetail#source
      module Source
        extend Straddle::Internal::Type::Enum

        WATCHTOWER = :watchtower

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
