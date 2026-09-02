# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Payouts#resubmit
    class PayoutResubmitParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   Description for the resubmitted payout. Defaults to the original description if
      #   omitted.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute external_id
      #   Your unique identifier for the resubmitted payout. Defaults to a new value if
      #   omitted.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute payment_date
      #   Date when Straddle submits the resubmitted payout for processing. Defaults to
      #   today if omitted.
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

      # @!method initialize(id:, description: nil, external_id: nil, payment_date: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::PayoutResubmitParams} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String, nil] Description for the resubmitted payout. Defaults to the original description if
      #
      #   @param external_id [String, nil] Your unique identifier for the resubmitted payout. Defaults to a new value if om
      #
      #   @param payment_date [Date, nil] Date when Straddle submits the resubmitted payout for processing. Defaults to to
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
