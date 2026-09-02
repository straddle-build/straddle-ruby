# typed: strong

module Straddle
  module Models
    class PaymentAuthorizationProof < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::PaymentAuthorizationProof,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for this document.
      sig { returns(String) }
      attr_accessor :document_id

      # The file name of this document as uploaded.
      sig { returns(String) }
      attr_accessor :document_name

      # The size of this document in bytes.
      sig { returns(Integer) }
      attr_accessor :document_size

      sig { returns(Straddle::PaymentDocumentType::TaggedSymbol) }
      attr_accessor :document_type

      # The UTC timestamp when this document was uploaded.
      sig { returns(Time) }
      attr_accessor :uploaded_at

      sig do
        params(
          document_id: String,
          document_name: String,
          document_size: Integer,
          document_type: Straddle::PaymentDocumentType::OrSymbol,
          uploaded_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this document.
        document_id:,
        # The file name of this document as uploaded.
        document_name:,
        # The size of this document in bytes.
        document_size:,
        document_type:,
        # The UTC timestamp when this document was uploaded.
        uploaded_at:
      )
      end

      sig do
        override.returns(
          {
            document_id: String,
            document_name: String,
            document_size: Integer,
            document_type: Straddle::PaymentDocumentType::TaggedSymbol,
            uploaded_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
