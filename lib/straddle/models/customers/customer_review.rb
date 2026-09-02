# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class CustomerReview < Straddle::Internal::Type::BaseModel
        # @!attribute customer_details
        #
        #   @return [Straddle::Models::Customer]
        required :customer_details, -> { Straddle::Customer }

        # @!attribute identity_details
        #
        #   @return [Straddle::Models::Customers::CustomerIdentityVerification, nil]
        optional :identity_details, -> { Straddle::Customers::CustomerIdentityVerification }

        # @!method initialize(customer_details:, identity_details: nil)
        #   @param customer_details [Straddle::Models::Customer]
        #   @param identity_details [Straddle::Models::Customers::CustomerIdentityVerification]
      end
    end

    CustomerReview = Customers::CustomerReview
  end
end
