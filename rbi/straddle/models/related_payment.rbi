# typed: strong

module Straddle
  module Models
    class RelatedPayment < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::RelatedPayment, Straddle::Internal::AnyHash)
        end

      # Unique identifier of the related payment.
      sig { returns(String) }
      attr_accessor :id

      # The type of payment.
      sig { returns(Straddle::PaymentType::TaggedSymbol) }
      attr_accessor :payment_type

      sig { returns(Straddle::PaymentRelationship::TaggedSymbol) }
      attr_accessor :relationship

      sig do
        params(
          id: String,
          payment_type: Straddle::PaymentType::OrSymbol,
          relationship: Straddle::PaymentRelationship::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the related payment.
        id:,
        # The type of payment.
        payment_type:,
        relationship:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            payment_type: Straddle::PaymentType::TaggedSymbol,
            relationship: Straddle::PaymentRelationship::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
