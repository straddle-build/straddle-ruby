# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Accounts#create
    class AccountCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute access_level
      #   The account access level. `standard` provides normal account access, including
      #   access to the Straddle dashboard. `managed` means the platform manages the
      #   account and account users cannot access the Straddle dashboard.
      #
      #   @return [Symbol, Straddle::Models::AccountCreateParams::AccessLevel]
      required :access_level, enum: -> { Straddle::AccountCreateParams::AccessLevel }

      # @!attribute account_type
      #   Account type. The only accepted value is `business`.
      #
      #   @return [Symbol, Straddle::Models::AccountCreateParams::AccountType]
      required :account_type, enum: -> { Straddle::AccountCreateParams::AccountType }

      # @!attribute business_profile
      #
      #   @return [Straddle::Models::AccountBusinessProfile]
      required :business_profile, -> { Straddle::AccountBusinessProfile }

      # @!attribute organization_id
      #   ID of the organization that will own the account.
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute external_id
      #   Your unique ID for the account.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

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

      # @!method initialize(access_level:, account_type:, business_profile:, organization_id:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountCreateParams} for more details.
      #
      #   @param access_level [Symbol, Straddle::Models::AccountCreateParams::AccessLevel] The account access level. `standard` provides normal account access, including a
      #
      #   @param account_type [Symbol, Straddle::Models::AccountCreateParams::AccountType] Account type. The only accepted value is `business`.
      #
      #   @param business_profile [Straddle::Models::AccountBusinessProfile]
      #
      #   @param organization_id [String] ID of the organization that will own the account.
      #
      #   @param external_id [String, nil] Your unique ID for the account.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]

      # The account access level. `standard` provides normal account access, including
      # access to the Straddle dashboard. `managed` means the platform manages the
      # account and account users cannot access the Straddle dashboard.
      module AccessLevel
        extend Straddle::Internal::Type::Enum

        STANDARD = :standard
        MANAGED = :managed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Account type. The only accepted value is `business`.
      module AccountType
        extend Straddle::Internal::Type::Enum

        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
