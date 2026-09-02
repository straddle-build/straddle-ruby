# frozen_string_literal: true

module Straddle
  module Models
    class AccountStatementSettings < Straddle::Internal::Type::BaseModel
      # @!attribute company_id
      #   Company identifier used in ACH records.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute company_name
      #   Company name used in statement records.
      #
      #   @return [String, nil]
      optional :company_name, String, nil?: true

      # @!attribute default_descriptor
      #   Default descriptor for account payments.
      #
      #   @return [String, nil]
      optional :default_descriptor, String, nil?: true

      # @!method initialize(company_id: nil, company_name: nil, default_descriptor: nil)
      #   @param company_id [String, nil] Company identifier used in ACH records.
      #
      #   @param company_name [String, nil] Company name used in statement records.
      #
      #   @param default_descriptor [String, nil] Default descriptor for account payments.
    end
  end
end
