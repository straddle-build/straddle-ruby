# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Charges#refund
    class ChargeRefundParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Refund amount in cents. `null` refunds the full original amount. A value must be
      #   greater than zero and no more than the original charge amount.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute description
      #   Description for the refund payout. Defaults to a description that identifies the
      #   original charge.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute external_id
      #   Your unique identifier for the refund. Defaults to a new value if omitted.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   User-defined string key-value pairs for the refund payout.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute payment_date
      #   Date when Straddle submits the refund payout for processing. Defaults to today
      #   if omitted.
      #
      #   @return [Date, nil]
      optional :payment_date, Date, nil?: true

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

      # @!method initialize(id:, amount: nil, description: nil, external_id: nil, metadata: nil, payment_date: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::ChargeRefundParams} for more details.
      #
      #   @param id [String]
      #
      #   @param amount [Integer, nil] Refund amount in cents. `null` refunds the full original amount. A value must be
      #
      #   @param description [String, nil] Description for the refund payout. Defaults to a description that identifies the
      #
      #   @param external_id [String, nil] Your unique identifier for the refund. Defaults to a new value if omitted.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] User-defined string key-value pairs for the refund payout.
      #
      #   @param payment_date [Date, nil] Date when Straddle submits the refund payout for processing. Defaults to today i
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
