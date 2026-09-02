# frozen_string_literal: true

module Straddle
  module Models
    class UnmaskedLinkedBankAccountDetails < Straddle::Internal::Type::BaseModel
      # @!attribute account_holder
      #   Name of the account holder as it appears on the bank account.
      #
      #   @return [String]
      required :account_holder, String

      # @!attribute account_number
      #   Bank account number.
      #
      #   @return [String]
      required :account_number, String

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

      # @!method initialize(account_holder:, account_number:, institution_name:, routing_number:)
      #   @param account_holder [String] Name of the account holder as it appears on the bank account.
      #
      #   @param account_number [String] Bank account number.
      #
      #   @param institution_name [String] Name of the financial institution.
      #
      #   @param routing_number [String] Nine-digit ABA routing number for the bank account.
    end
  end
end
