# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      class PaykeyVerificationBreakdown < Straddle::Internal::Type::BaseModel
        # @!attribute account_validation
        #
        #   @return [Straddle::Models::Paykeys::AccountValidationDetails, nil]
        optional :account_validation, -> { Straddle::Paykeys::AccountValidationDetails }

        # @!attribute name_match
        #
        #   @return [Straddle::Models::Paykeys::AccountNameMatchDetails, nil]
        optional :name_match, -> { Straddle::Paykeys::AccountNameMatchDetails }

        # @!method initialize(account_validation: nil, name_match: nil)
        #   @param account_validation [Straddle::Models::Paykeys::AccountValidationDetails]
        #   @param name_match [Straddle::Models::Paykeys::AccountNameMatchDetails]
      end
    end

    PaykeyVerificationBreakdown = Paykeys::PaykeyVerificationBreakdown
  end
end
