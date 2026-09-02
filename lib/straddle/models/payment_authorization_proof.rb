# frozen_string_literal: true

module Straddle
  module Models
    class PaymentAuthorizationProof < Straddle::Internal::Type::BaseModel
      # @!attribute document_id
      #   Unique identifier for this document.
      #
      #   @return [String]
      required :document_id, String

      # @!attribute document_name
      #   The file name of this document as uploaded.
      #
      #   @return [String]
      required :document_name, String

      # @!attribute document_size
      #   The size of this document in bytes.
      #
      #   @return [Integer]
      required :document_size, Integer

      # @!attribute document_type
      #
      #   @return [Symbol, Straddle::Models::PaymentDocumentType]
      required :document_type, enum: -> { Straddle::PaymentDocumentType }

      # @!attribute uploaded_at
      #   The UTC timestamp when this document was uploaded.
      #
      #   @return [Time]
      required :uploaded_at, Time

      # @!method initialize(document_id:, document_name:, document_size:, document_type:, uploaded_at:)
      #   @param document_id [String] Unique identifier for this document.
      #
      #   @param document_name [String] The file name of this document as uploaded.
      #
      #   @param document_size [Integer] The size of this document in bytes.
      #
      #   @param document_type [Symbol, Straddle::Models::PaymentDocumentType]
      #
      #   @param uploaded_at [Time] The UTC timestamp when this document was uploaded.
    end
  end
end
