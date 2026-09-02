# frozen_string_literal: true

module Straddle
  module Models
    class UnmaskedPaykeyBankDetails < Straddle::Internal::Type::BaseModel
      # @!attribute account_number
      #   Bank account number.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute account_type
      #
      #   @return [Symbol, Straddle::Models::AccountType]
      required :account_type, enum: -> { Straddle::AccountType }

      # @!attribute routing_number
      #   Bank routing number.
      #
      #   @return [String]
      required :routing_number, String

      # @!method initialize(account_number:, account_type:, routing_number:)
      #   @param account_number [String] Bank account number.
      #
      #   @param account_type [Symbol, Straddle::Models::AccountType]
      #
      #   @param routing_number [String] Bank routing number.
    end
  end
end
