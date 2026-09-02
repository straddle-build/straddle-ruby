# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Customers#update
    class CustomerUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute device
      #
      #   @return [Straddle::Models::CustomerDevice]
      required :device, -> { Straddle::CustomerDevice }

      # @!attribute email
      #   Customer email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Full name for an individual customer or business name for a business customer.
      #
      #   @return [String]
      required :name, String

      # @!attribute phone
      #   Customer phone number in E.164 format.
      #
      #   @return [String]
      required :phone, String

      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::CustomerStatus]
      required :status, enum: -> { Straddle::CustomerStatus }

      # @!attribute address
      #   Customer postal address. When provided, the object must include all required
      #   fields.
      #
      #   @return [Straddle::Models::CustomerAddress, nil]
      optional :address, -> { Straddle::CustomerAddress }, nil?: true

      # @!attribute compliance_profile
      #
      #   @return [Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile, nil]
      optional :compliance_profile, union: -> { Straddle::UnmaskedComplianceProfile }, nil?: true

      # @!attribute external_id
      #   Unique identifier for the customer in your system.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs associated with the customer.
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

      # @!method initialize(id:, device:, email:, name:, phone:, status:, address: nil, compliance_profile: nil, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, straddle_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CustomerUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param device [Straddle::Models::CustomerDevice]
      #
      #   @param email [String] Customer email address.
      #
      #   @param name [String] Full name for an individual customer or business name for a business customer.
      #
      #   @param phone [String] Customer phone number in E.164 format.
      #
      #   @param status [Symbol, Straddle::Models::CustomerStatus]
      #
      #   @param address [Straddle::Models::CustomerAddress, nil] Customer postal address. When provided, the object must include all required fie
      #
      #   @param compliance_profile [Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile, nil]
      #
      #   @param external_id [String, nil] Unique identifier for the customer in your system.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs associated with the customer.
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
