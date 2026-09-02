# frozen_string_literal: true

module Straddle
  module Models
    class UnmaskedCustomer < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the customer.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Timestamp of when the customer record was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute email
      #   The customer's email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Full name for an individual customer or business name for a business customer.
      #
      #   @return [String]
      required :name, String

      # @!attribute phone
      #   The customer's phone number in E.164 format.
      #
      #   @return [String]
      required :phone, String

      # @!attribute status
      #
      #   @return [Symbol, Straddle::Models::CustomerStatus]
      required :status, enum: -> { Straddle::CustomerStatus }

      # @!attribute type
      #
      #   @return [Symbol, Straddle::Models::CustomerType]
      required :type, enum: -> { Straddle::CustomerType }

      # @!attribute updated_at
      #   Timestamp of the most recent update to the customer record.
      #
      #   @return [Time]
      required :updated_at, Time

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

      # @!attribute config
      #
      #   @return [Straddle::Models::CustomerConfiguration, nil]
      optional :config, -> { Straddle::CustomerConfiguration }

      # @!attribute device
      #
      #   @return [Straddle::Models::CustomerDevice, nil]
      optional :device, -> { Straddle::CustomerDevice }

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

      # @!method initialize(id:, created_at:, email:, name:, phone:, status:, type:, updated_at:, address: nil, compliance_profile: nil, config: nil, device: nil, external_id: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::UnmaskedCustomer} for more details.
      #
      #   @param id [String] Unique identifier for the customer.
      #
      #   @param created_at [Time] Timestamp of when the customer record was created.
      #
      #   @param email [String] The customer's email address.
      #
      #   @param name [String] Full name for an individual customer or business name for a business customer.
      #
      #   @param phone [String] The customer's phone number in E.164 format.
      #
      #   @param status [Symbol, Straddle::Models::CustomerStatus]
      #
      #   @param type [Symbol, Straddle::Models::CustomerType]
      #
      #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
      #
      #   @param address [Straddle::Models::CustomerAddress, nil] Customer postal address. When provided, the object must include all required fie
      #
      #   @param compliance_profile [Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile, nil]
      #
      #   @param config [Straddle::Models::CustomerConfiguration]
      #
      #   @param device [Straddle::Models::CustomerDevice]
      #
      #   @param external_id [String, nil] Unique identifier for the customer in your system.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs associated with the customer.
    end
  end
end
