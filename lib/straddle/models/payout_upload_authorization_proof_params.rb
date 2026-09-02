# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#upload_authorization_proof
    class PayoutUploadAuthorizationProofParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute file
      #   The document file to upload as proof of authorization for this payout. Supported
      #   file types are PDF (.pdf), PNG (.png), JPEG (.jpg, .jpeg), Word (.doc), and Word
      #   (.docx), with a maximum file size of 10 MiB (10,485,760 bytes). Empty (0-byte)
      #   files are rejected. Uploaded files are validated for matching file signatures
      #   (magic bytes) and file extension agreement.
      #
      #   @return [Pathname, StringIO, IO, String, Straddle::FilePart]
      required :file, Straddle::Internal::Type::FileInput, api_name: :File

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute idempotency_key
      #   Optional client-generated key for an idempotent request.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute straddle_account_id
      #   For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @return [String, nil]
      optional :straddle_account_id, String

      # @!method initialize(id:, file:, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutUploadAuthorizationProofParams} for more details.
      #
      #   @param id [String]
      #
      #   @param file [Pathname, StringIO, IO, String, Straddle::FilePart] The document file to upload as proof of authorization for this payout. Supported
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param straddle_account_id [String] For platform requests, the embedded account UUID that sets the request scope.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
