# frozen_string_literal: true

module Straddle
  module Models
    class BusinessCustomerRepresentative < Straddle::Internal::Type::BaseModel
      # @!attribute name
      #   Full name of the representative.
      #
      #   @return [String]
      required :name, String

      # @!attribute email
      #   Email address of the representative.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute phone
      #   Phone number of the representative.
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!method initialize(name:, email: nil, phone: nil)
      #   @param name [String] Full name of the representative.
      #
      #   @param email [String, nil] Email address of the representative.
      #
      #   @param phone [String, nil] Phone number of the representative.
    end
  end
end
