# frozen_string_literal: true

module Straddle
  module Models
    class AccountStatusDetail < Straddle::Internal::Type::BaseModel
      # @!attribute code
      #   Machine-readable status code from the source.
      #
      #   @return [String]
      required :code, String

      # @!attribute message
      #   Human-readable description of the account's status.
      #
      #   @return [String]
      required :message, String

      # @!attribute reason
      #   Machine-readable reason for the account's status.
      #
      #   @return [Symbol, Straddle::Models::AccountStatusDetail::Reason]
      required :reason, enum: -> { Straddle::AccountStatusDetail::Reason }

      # @!attribute source
      #   System that produced the account status detail.
      #
      #   @return [Symbol, Straddle::Models::AccountStatusDetail::Source]
      required :source, enum: -> { Straddle::AccountStatusDetail::Source }

      # @!method initialize(code:, message:, reason:, source:)
      #   @param code [String] Machine-readable status code from the source.
      #
      #   @param message [String] Human-readable description of the account's status.
      #
      #   @param reason [Symbol, Straddle::Models::AccountStatusDetail::Reason] Machine-readable reason for the account's status.
      #
      #   @param source [Symbol, Straddle::Models::AccountStatusDetail::Source] System that produced the account status detail.

      # Machine-readable reason for the account's status.
      #
      # @see Straddle::Models::AccountStatusDetail#reason
      module Reason
        extend Straddle::Internal::Type::Enum

        UNVERIFIED = :unverified
        IN_REVIEW = :in_review
        PENDING = :pending
        STUCK = :stuck
        VERIFIED = :verified
        FAILED_VERIFICATION = :failed_verification
        DISABLED = :disabled
        TERMINATED = :terminated
        NEW = :new

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # System that produced the account status detail.
      #
      # @see Straddle::Models::AccountStatusDetail#source
      module Source
        extend Straddle::Internal::Type::Enum

        WATCHTOWER = :watchtower

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
