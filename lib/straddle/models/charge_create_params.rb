# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Charges#create
    class ChargeCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount in cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute config
      #
      #   @return [Straddle::Models::ChargeConfiguration]
      required :config, -> { Straddle::ChargeConfiguration }

      # @!attribute consent_type
      #   How the customer authorized the charge. `internet` covers online and mobile
      #   authorization. `signed` covers written or PDF-signed agreements.
      #
      #   @return [Symbol, Straddle::Models::ConsentType]
      required :consent_type, enum: -> { Straddle::ConsentType }

      # @!attribute currency
      #   Currency code. Only `USD` is supported.
      #
      #   @return [String]
      required :currency, String

      # @!attribute description
      #   Description shown on the customer's bank statement where supported.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute device
      #
      #   @return [Straddle::Models::PaymentDevice]
      required :device, -> { Straddle::PaymentDevice }

      # @!attribute external_id
      #   Your unique identifier for the charge. Must be unique across charges.
      #
      #   @return [String]
      required :external_id, String

      # @!attribute paykey
      #   The paykey token that identifies the customer's bank account.
      #
      #   @return [String]
      required :paykey, String

      # @!attribute payment_date
      #   Date when Straddle submits the charge for processing.
      #
      #   @return [Date]
      required :payment_date, Date

      # @!attribute metadata
      #   Up to 20 user-defined string key-value pairs.
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

      # @!method initialize(amount:, config:, consent_type:, currency:, description:, device:, external_id:, paykey:, payment_date:, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::ChargeCreateParams} for more details.
      #
      #   @param amount [Integer] Amount in cents.
      #
      #   @param config [Straddle::Models::ChargeConfiguration]
      #
      #   @param consent_type [Symbol, Straddle::Models::ConsentType] How the customer authorized the charge. `internet` covers online and mobile auth
      #
      #   @param currency [String] Currency code. Only `USD` is supported.
      #
      #   @param description [String, nil] Description shown on the customer's bank statement where supported.
      #
      #   @param device [Straddle::Models::PaymentDevice]
      #
      #   @param external_id [String] Your unique identifier for the charge. Must be unique across charges.
      #
      #   @param paykey [String] The paykey token that identifies the customer's bank account.
      #
      #   @param payment_date [Date] Date when Straddle submits the charge for processing.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined string key-value pairs.
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
