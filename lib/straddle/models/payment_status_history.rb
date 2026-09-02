# frozen_string_literal: true

module Straddle
  module Models
    class PaymentStatusHistory < Straddle::Internal::Type::BaseModel
      # @!attribute changed_at
      #   Timestamp when the status changed.
      #
      #   @return [Time]
      required :changed_at, Time

      # @!attribute message
      #   Human-readable status description.
      #
      #   @return [String]
      required :message, String

      # @!attribute reason
      #   Machine-readable reason for the status.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatusReason]
      required :reason, enum: -> { Straddle::PaymentStatusReason }

      # @!attribute source
      #   Source of the status change.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatusSource]
      required :source, enum: -> { Straddle::PaymentStatusSource }

      # @!attribute status
      #   The current status of the `charge` or `payout`.
      #
      #   @return [Symbol, Straddle::Models::PaymentStatus]
      required :status, enum: -> { Straddle::PaymentStatus }

      # @!attribute code
      #   Status code, when available.
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!method initialize(changed_at:, message:, reason:, source:, status:, code: nil)
      #   @param changed_at [Time] Timestamp when the status changed.
      #
      #   @param message [String] Human-readable status description.
      #
      #   @param reason [Symbol, Straddle::Models::PaymentStatusReason] Machine-readable reason for the status.
      #
      #   @param source [Symbol, Straddle::Models::PaymentStatusSource] Source of the status change.
      #
      #   @param status [Symbol, Straddle::Models::PaymentStatus] The current status of the `charge` or `payout`.
      #
      #   @param code [String, nil] Status code, when available.
    end
  end
end
