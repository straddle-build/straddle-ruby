# frozen_string_literal: true

module Straddle
  module Models
    module Paykeys
      class PaykeyReview < Straddle::Internal::Type::BaseModel
        # @!attribute paykey_details
        #
        #   @return [Straddle::Models::Paykey]
        required :paykey_details, -> { Straddle::Paykey }

        # @!attribute verification_details
        #
        #   @return [Straddle::Models::Paykeys::PaykeyVerificationDetails, nil]
        optional :verification_details, -> { Straddle::Paykeys::PaykeyVerificationDetails }

        # @!method initialize(paykey_details:, verification_details: nil)
        #   @param paykey_details [Straddle::Models::Paykey]
        #   @param verification_details [Straddle::Models::Paykeys::PaykeyVerificationDetails]
      end
    end

    PaykeyReview = Paykeys::PaykeyReview
  end
end
