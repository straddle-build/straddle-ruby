# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#update
    class PayoutUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute description
      #   Updated description for the payout.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute payment_date
      #   New date for Straddle to submit the payout for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute metadata
      #   Replacement metadata for the payout. Up to 20 user-defined string key-value
      #   pairs.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

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

      # @!method initialize(id:, amount:, description:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer] Amount in cents.
      #
      #   @param description [String, nil] Updated description for the payout.
      #
      #   @param payment_date [Date] New date for Straddle to submit the payout for processing.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Replacement metadata for the payout. Up to 20 user-defined string key-value pair
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
