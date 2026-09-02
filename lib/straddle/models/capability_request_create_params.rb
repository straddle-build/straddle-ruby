# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::CapabilityRequests#create
    class CapabilityRequestCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute businesses
      #   Request to enable or disable payments from businesses.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::Businesses, nil]
      optional :businesses, -> { Straddle::CapabilityRequestCreateParams::Businesses }

      # @!attribute charges
      #   Requested charge capability and limits.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::Charges, nil]
      optional :charges, -> { Straddle::CapabilityRequestCreateParams::Charges }

      # @!attribute individuals
      #   Request to enable or disable payments from individuals.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::Individuals, nil]
      optional :individuals, -> { Straddle::CapabilityRequestCreateParams::Individuals }

      # @!attribute internet
      #   Request to enable or disable internet and mobile payment authorization.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::Internet, nil]
      optional :internet, -> { Straddle::CapabilityRequestCreateParams::Internet }

      # @!attribute payouts
      #   Requested payout capability and limits.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::Payouts, nil]
      optional :payouts, -> { Straddle::CapabilityRequestCreateParams::Payouts }

      # @!attribute signed_agreement
      #   Request to enable or disable signed-agreement payment authorization.
      #
      #   @return [Straddle::Models::CapabilityRequestCreateParams::SignedAgreement, nil]
      optional :signed_agreement, -> { Straddle::CapabilityRequestCreateParams::SignedAgreement }

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

      # @!method initialize(account_id:, businesses: nil, charges: nil, individuals: nil, internet: nil, payouts: nil, signed_agreement: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param businesses [Straddle::Models::CapabilityRequestCreateParams::Businesses] Request to enable or disable payments from businesses.
      #
      #   @param charges [Straddle::Models::CapabilityRequestCreateParams::Charges] Requested charge capability and limits.
      #
      #   @param individuals [Straddle::Models::CapabilityRequestCreateParams::Individuals] Request to enable or disable payments from individuals.
      #
      #   @param internet [Straddle::Models::CapabilityRequestCreateParams::Internet] Request to enable or disable internet and mobile payment authorization.
      #
      #   @param payouts [Straddle::Models::CapabilityRequestCreateParams::Payouts] Requested payout capability and limits.
      #
      #   @param signed_agreement [Straddle::Models::CapabilityRequestCreateParams::SignedAgreement] Request to enable or disable signed-agreement payment authorization.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      class Businesses < Straddle::Internal::Type::BaseModel
        # @!attribute enable
        #   Whether the request enables or disables the capability.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!method initialize(enable:)
        #   Request to enable or disable payments from businesses.
        #
        #   @param enable [Boolean] Whether the request enables or disables the capability.
      end

      class Charges < Straddle::Internal::Type::BaseModel
        # @!attribute daily_amount
        #   Daily charge amount limit in cents.
        #
        #   @return [Float]
        required :daily_amount, Float

        # @!attribute enable
        #   Whether to enable or disable charges for the account.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!attribute max_amount
        #   Maximum amount in cents for one charge.
        #
        #   @return [Float]
        required :max_amount, Float

        # @!attribute monthly_amount
        #   Monthly charge amount limit in cents.
        #
        #   @return [Float]
        required :monthly_amount, Float

        # @!attribute monthly_count
        #   Maximum number of charges per calendar month.
        #
        #   @return [Integer]
        required :monthly_count, Integer

        # @!method initialize(daily_amount:, enable:, max_amount:, monthly_amount:, monthly_count:)
        #   Requested charge capability and limits.
        #
        #   @param daily_amount [Float] Daily charge amount limit in cents.
        #
        #   @param enable [Boolean] Whether to enable or disable charges for the account.
        #
        #   @param max_amount [Float] Maximum amount in cents for one charge.
        #
        #   @param monthly_amount [Float] Monthly charge amount limit in cents.
        #
        #   @param monthly_count [Integer] Maximum number of charges per calendar month.
      end

      class Individuals < Straddle::Internal::Type::BaseModel
        # @!attribute enable
        #   Whether the request enables or disables the capability.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!method initialize(enable:)
        #   Request to enable or disable payments from individuals.
        #
        #   @param enable [Boolean] Whether the request enables or disables the capability.
      end

      class Internet < Straddle::Internal::Type::BaseModel
        # @!attribute enable
        #   Whether the request enables or disables the capability.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!method initialize(enable:)
        #   Request to enable or disable internet and mobile payment authorization.
        #
        #   @param enable [Boolean] Whether the request enables or disables the capability.
      end

      class Payouts < Straddle::Internal::Type::BaseModel
        # @!attribute daily_amount
        #   Daily payout amount limit in cents.
        #
        #   @return [Float]
        required :daily_amount, Float

        # @!attribute enable
        #   Whether to enable or disable payouts for the account.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!attribute max_amount
        #   Maximum amount in cents for one payout.
        #
        #   @return [Float]
        required :max_amount, Float

        # @!attribute monthly_amount
        #   Monthly payout amount limit in cents.
        #
        #   @return [Float]
        required :monthly_amount, Float

        # @!attribute monthly_count
        #   Maximum number of payouts per calendar month.
        #
        #   @return [Integer]
        required :monthly_count, Integer

        # @!method initialize(daily_amount:, enable:, max_amount:, monthly_amount:, monthly_count:)
        #   Requested payout capability and limits.
        #
        #   @param daily_amount [Float] Daily payout amount limit in cents.
        #
        #   @param enable [Boolean] Whether to enable or disable payouts for the account.
        #
        #   @param max_amount [Float] Maximum amount in cents for one payout.
        #
        #   @param monthly_amount [Float] Monthly payout amount limit in cents.
        #
        #   @param monthly_count [Integer] Maximum number of payouts per calendar month.
      end

      class SignedAgreement < Straddle::Internal::Type::BaseModel
        # @!attribute enable
        #   Whether the request enables or disables the capability.
        #
        #   @return [Boolean]
        required :enable, Straddle::Internal::Type::Boolean

        # @!method initialize(enable:)
        #   Request to enable or disable signed-agreement payment authorization.
        #
        #   @param enable [Boolean] Whether the request enables or disables the capability.
      end
    end
  end
end
