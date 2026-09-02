# frozen_string_literal: true

module Straddle
  module Models
    class CustomerSummary < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the customer.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Timestamp of when the customer record was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute email
      #   The customer's email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Full name for an individual customer or business name for a business customer.
      #
      #   @return [String]
      required :name, String

      # @!attribute phone
      #   The customer's phone number in E.164 format.
      #
      #   @return [String]
      required :phone, String

      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::CustomerStatus]
      required :status, enum: -> { Straddle::CustomerStatus }

      # @!attribute type
      #
      #   @return [Symbol, Straddle::Models::CustomerType]
      required :type, enum: -> { Straddle::CustomerType }

      # @!attribute updated_at
      #   Timestamp of the most recent update to the customer record.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute external_id
      #   Unique identifier for the customer in your system.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!method initialize(id:, created_at:, email:, name:, phone:, status:, type:, updated_at:, external_id: nil)
      #   @param id [String] Unique identifier for the customer.
      #
      #   @param created_at [Time] Timestamp of when the customer record was created.
      #
      #   @param email [String] The customer's email address.
      #
      #   @param name [String] Full name for an individual customer or business name for a business customer.
      #
      #   @param phone [String] The customer's phone number in E.164 format.
      #
      #   @param status [Symbol, Straddle::Models::CustomerStatus]
      #
      #   @param type [Symbol, Straddle::Models::CustomerType]
      #
      #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
      #
      #   @param external_id [String, nil] Unique identifier for the customer in your system.
    end
  end
end
