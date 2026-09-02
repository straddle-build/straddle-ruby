# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      class PaykeyVerificationDetails < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the verification details.
        #
        #   @return [String]
        required :id, String

        # @!attribute breakdown
        #
        #   @return [Straddle::Models::Paykeys::PaykeyVerificationBreakdown]
        required :breakdown, -> { Straddle::Paykeys::PaykeyVerificationBreakdown }

        # @!attribute created_at
        #   Timestamp of when the verification was initiated.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        required :decision, enum: -> { Straddle::Paykeys::PaykeyVerificationResult }

        # @!attribute messages
        #   Messages returned by the paykey verification process.
        #
        #   @return [Hash{Symbol=>String}]
        required :messages, Straddle::Internal::Type::HashOf[String]

        # @!attribute updated_at
        #   Timestamp of the most recent update to the verification details.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, breakdown:, created_at:, decision:, messages:, updated_at:)
        #   @param id [String] Unique identifier for the verification details.
        #
        #   @param breakdown [Straddle::Models::Paykeys::PaykeyVerificationBreakdown]
        #
        #   @param created_at [Time] Timestamp of when the verification was initiated.
        #
        #   @param decision [Symbol, Straddle::Models::Paykeys::PaykeyVerificationResult]
        #
        #   @param messages [Hash{Symbol=>String}] Messages returned by the paykey verification process.
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the verification details.
      end
    end

    PaykeyVerificationDetails = Paykeys::PaykeyVerificationDetails
  end
end
