# frozen_string_literal: true

module Straddle
  module Models
    class RepresentativeStatusDetail < Straddle::Internal::Type::BaseModel
      # @!attribute code
      #   Machine-readable status code from the source.
      #
      #   @return [String]
      required :code, String

      # @!attribute message
      #   Human-readable description of the representative's status.
      #
      #   @return [String]
      required :message, String

      # @!attribute reason
      #   Machine-readable reason for the representative's status.
      #
      #   @return [Symbol, Straddle::Models::RepresentativeStatusDetail::Reason]
      required :reason, enum: -> { Straddle::RepresentativeStatusDetail::Reason }

      # @!attribute source
      #   System that produced the representative status detail.
      #
      #   @return [Symbol, Straddle::Models::RepresentativeStatusDetail::Source]
      required :source, enum: -> { Straddle::RepresentativeStatusDetail::Source }

      # @!method initialize(code:, message:, reason:, source:)
      #   @param code [String] Machine-readable status code from the source.
      #
      #   @param message [String] Human-readable description of the representative's status.
      #
      #   @param reason [Symbol, Straddle::Models::RepresentativeStatusDetail::Reason] Machine-readable reason for the representative's status.
      #
      #   @param source [Symbol, Straddle::Models::RepresentativeStatusDetail::Source] System that produced the representative status detail.

      # Machine-readable reason for the representative's status.
      #
      # @see Straddle::Models::RepresentativeStatusDetail#reason
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

      # System that produced the representative status detail.
      #
      # @see Straddle::Models::RepresentativeStatusDetail#source
      module Source
        extend Straddle::Internal::Type::Enum

        WATCHTOWER = :watchtower

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
