# frozen_string_literal: true

module Straddle
  module Models
    class MaskedLinkedBankAccountDetails < Straddle::Internal::Type::BaseModel
      # @!attribute account_holder
      #   Name of the account holder as it appears on the bank account.
      #
      #   @return [String]
      required :account_holder, String

      # @!attribute account_mask
      #   Last four digits of the bank account number.
      #
      #   @return [String]
      required :account_mask, String

      # @!attribute institution_name
      #   Name of the financial institution.
      #
      #   @return [String]
      required :institution_name, String

      # @!attribute routing_number
      #   Nine-digit ABA routing number for the bank account.
      #
      #   @return [String]
      required :routing_number, String

      # @!method initialize(account_holder:, account_mask:, institution_name:, routing_number:)
      #   @param account_holder [String] Name of the account holder as it appears on the bank account.
      #
      #   @param account_mask [String] Last four digits of the bank account number.
      #
      #   @param institution_name [String] Name of the financial institution.
      #
      #   @param routing_number [String] Nine-digit ABA routing number for the bank account.
    end
  end
end
