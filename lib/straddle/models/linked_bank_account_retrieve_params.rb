# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::LinkedBankAccounts#retrieve
    class LinkedBankAccountRetrieveParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute linked_bank_account_id
      #
      #   @return [String]
      required :linked_bank_account_id, String

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!method initialize(linked_bank_account_id:, correlation_id: nil, request_id: nil, request_options: {})
      #   @param linked_bank_account_id [String]
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
