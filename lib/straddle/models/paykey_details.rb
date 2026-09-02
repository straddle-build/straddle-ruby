# frozen_string_literal: true

module Straddle
  module Models
    class PaykeyDetails < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the paykey.
      #
      #   @return [String]
      required :id, String

      # @!attribute customer_id
      #   Unique identifier for the customer associated with the paykey.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute label
      #   Display label combining the bank name and masked account number.
      #
      #   @return [String]
      required :label, String

      # @!attribute balance
      #   The most recent available balance in the smallest currency unit, if a balance
      #   check was performed.
      #
      #   @return [Integer, nil]
      optional :balance, Integer, nil?: true

      # @!method initialize(id:, customer_id:, label:, balance: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PaykeyDetails} for more details.
      #
      #   @param id [String] Unique identifier for the paykey.
      #
      #   @param customer_id [String] Unique identifier for the customer associated with the paykey.
      #
      #   @param label [String] Display label combining the bank name and masked account number.
      #
      #   @param balance [Integer, nil] The most recent available balance in the smallest currency unit, if a balance ch
    end
  end
end
