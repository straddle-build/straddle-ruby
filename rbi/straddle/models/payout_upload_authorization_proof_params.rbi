# typed: strong

module Straddle
  module Models
    class PayoutUploadAuthorizationProofParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::PayoutUploadAuthorizationProofParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The document file to upload as proof of authorization for this payout. Supported
      # file types are PDF (.pdf), PNG (.png), JPEG (.jpg, .jpeg), Word (.doc), and Word
      # (.docx), with a maximum file size of 10 MiB (10,485,760 bytes). Empty (0-byte)
      # files are rejected. Uploaded files are validated for matching file signatures
      # (magic bytes) and file extension agreement.
      sig { returns(Straddle::Internal::FileInput) }
      attr_accessor :file

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated key for an idempotent request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # For platform requests, the embedded account UUID that sets the request scope.
      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          id: String,
          file: Straddle::Internal::FileInput,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The document file to upload as proof of authorization for this payout. Supported
        # file types are PDF (.pdf), PNG (.png), JPEG (.jpg, .jpeg), Word (.doc), and Word
        # (.docx), with a maximum file size of 10 MiB (10,485,760 bytes). Empty (0-byte)
        # files are rejected. Uploaded files are validated for matching file signatures
        # (magic bytes) and file extension agreement.
        file:,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            file: Straddle::Internal::FileInput,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
