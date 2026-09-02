# frozen_string_literal: true

module Straddle
  module Models
    class CustomerDetails < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the customer.
      #
      #   @return [String]
      required :id, String

      # @!attribute customer_type
      #   Whether the customer is an individual or a business.
      #
      #   @return [Symbol, Straddle::Models::CustomerType]
      required :customer_type, enum: -> { Straddle::CustomerType }

      # @!attribute email
      #   Customer's email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Customer's full name or business name.
      #
      #   @return [String]
      required :name, String

      # @!attribute phone
      #   Customer's phone number in E.164 format.
      #
      #   @return [String]
      required :phone, String

      # @!method initialize(id:, customer_type:, email:, name:, phone:)
      #   Information about the customer associated with the charge or payout.
      #
      #   @param id [String] Unique identifier for the customer.
      #
      #   @param customer_type [Symbol, Straddle::Models::CustomerType] Whether the customer is an individual or a business.
      #
      #   @param email [String] Customer's email address.
      #
      #   @param name [String] Customer's full name or business name.
      #
      #   @param phone [String] Customer's phone number in E.164 format.
    end
  end
end
