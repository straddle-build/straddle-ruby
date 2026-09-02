# frozen_string_literal: true

module Straddle
  module Models
    class Paykey < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the paykey.
      #
      #   @return [String]
      required :id, String

      # @!attribute config
      #
      #   @return [Straddle::Models::PaykeyConfiguration]
      required :config, -> { Straddle::PaykeyConfiguration }

      # @!attribute created_at
      #   Timestamp of when the paykey was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute label
      #   Human-readable label for the paykey.
      #
      #   @return [String]
      required :label, String

      # @!attribute paykey
      #   Masked paykey value.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute source
      #
      #   @return [Symbol, Straddle::Models::PaykeySource]
      required :source, enum: -> { Straddle::PaykeySource }

      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::PaykeyStatus]
      required :status, enum: -> { Straddle::PaykeyStatus }

      # @!attribute updated_at
      #   Timestamp of the most recent update to the paykey.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute balance
      #
      #   @return [Straddle::Models::PaykeyBalanceDetails, nil]
      optional :balance, -> { Straddle::PaykeyBalanceDetails }

      # @!attribute bank_data
      #
      #   @return [Straddle::Models::PaykeyBankDetails, nil]
      optional :bank_data, -> { Straddle::PaykeyBankDetails }

      # @!attribute customer_id
      #   Unique identifier for the customer associated with the paykey.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute expires_at
      #   Expiration date and time of the paykey, if applicable.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute external_id
      #   Unique identifier for the paykey in your system.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute institution_name
      #   Name of the financial institution.
      #
      #   @return [String, nil]
      optional :institution_name, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs associated with the paykey.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute status_details
      #
      #   @return [Straddle::Models::PaymentStatusDetails, nil]
      optional :status_details, -> { Straddle::PaymentStatusDetails }

      # @!attribute unblock_eligible
      #   Whether the paykey is eligible for client-initiated unblocking. `true` only when
      #   the paykey is blocked by an `R29` return and has not been unblocked before.
      #   `false` for other blocked paykeys. `null` when the paykey is not blocked.
      #
      #   @return [Boolean, nil]
      optional :unblock_eligible, Straddle::Internal::Type::Boolean, nil?: true

      # @!method initialize(id:, config:, created_at:, label:, paykey:, source:, status:, updated_at:, balance: nil, bank_data: nil, customer_id: nil, expires_at: nil, external_id: nil, institution_name: nil, metadata: nil, status_details: nil, unblock_eligible: nil)
      #   Some parameter documentations has been truncated, see {Straddle::Models::Paykey}
      #   for more details.
      #
      #   @param id [String] Unique identifier for the paykey.
      #
      #   @param config [Straddle::Models::PaykeyConfiguration]
      #
      #   @param created_at [Time] Timestamp of when the paykey was created.
      #
      #   @param label [String] Human-readable label for the paykey.
      #
      #   @param paykey [String] Masked paykey value.
      #
      #   @param source [Symbol, Straddle::Models::PaykeySource]
      #
      #   @param status [Symbol, Straddle::Models::PaykeyStatus]
      #
      #   @param updated_at [Time] Timestamp of the most recent update to the paykey.
      #
      #   @param balance [Straddle::Models::PaykeyBalanceDetails]
      #
      #   @param bank_data [Straddle::Models::PaykeyBankDetails]
      #
      #   @param customer_id [String, nil] Unique identifier for the customer associated with the paykey.
      #
      #   @param expires_at [Time, nil] Expiration date and time of the paykey, if applicable.
      #
      #   @param external_id [String, nil] Unique identifier for the paykey in your system.
      #
      #   @param institution_name [String, nil] Name of the financial institution.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs associated with the paykey.
      #
      #   @param status_details [Straddle::Models::PaymentStatusDetails]
      #
      #   @param unblock_eligible [Boolean, nil] Whether the paykey is eligible for client-initiated unblocking. `true` only when
    end
  end
end
