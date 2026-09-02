# frozen_string_literal: true

module Straddle
  module Models
    class RelatedPayment < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the related payment.
      #
      #   @return [String]
      required :id, String

      # @!attribute payment_type
      #   The type of payment.
      #
      #   @return [Symbol, Straddle::Models::PaymentType]
      required :payment_type, enum: -> { Straddle::PaymentType }

      # @!attribute relationship
      #
      #   @return [Symbol, Straddle::Models::PaymentRelationship]
      required :relationship, enum: -> { Straddle::PaymentRelationship }

      # @!method initialize(id:, payment_type:, relationship:)
      #   @param id [String] Unique identifier of the related payment.
      #
      #   @param payment_type [Symbol, Straddle::Models::PaymentType] The type of payment.
      #
      #   @param relationship [Symbol, Straddle::Models::PaymentRelationship]
    end
  end
end
