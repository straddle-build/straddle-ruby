# frozen_string_literal: true

module Straddle
  module Models
    class CapabilityRequest < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the capability request.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   ID of the account associated with the capability request.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute category
      #   Groups the requested capability. `payment_type` covers `charges` and `payouts`.
      #   `customer_type` covers `individuals` and `businesses`. `consent_type` covers
      #   `signed_agreement` and `internet` authorization.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequest::Category]
      required :category, enum: -> { Straddle::CapabilityRequest::Category }

      # @!attribute created_at
      #   Date and time when Straddle created the capability request.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute enable
      #   Whether the request enables or disables the capability.
      #
      #   @return [Boolean]
      required :enable, Straddle::Internal::Type::Boolean

      # @!attribute status
      #   Status of the capability request.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequest::Status]
      required :status, enum: -> { Straddle::CapabilityRequest::Status }

      # @!attribute type
      #   Capability type requested within the category.
      #
      #   @return [Symbol, Straddle::Models::CapabilityRequest::Type]
      required :type, enum: -> { Straddle::CapabilityRequest::Type }

      # @!attribute updated_at
      #   Date and time of the most recent capability request update.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute settings
      #   Limits and other settings requested for the capability.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :settings, Straddle::Internal::Type::HashOf[Straddle::Internal::Type::Unknown], nil?: true

      # @!method initialize(id:, account_id:, category:, created_at:, enable:, status:, type:, updated_at:, settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::CapabilityRequest} for more details.
      #
      #   @param id [String] Straddle's unique ID for the capability request.
      #
      #   @param account_id [String] ID of the account associated with the capability request.
      #
      #   @param category [Symbol, Straddle::Models::CapabilityRequest::Category] Groups the requested capability. `payment_type` covers `charges` and `payouts`.
      #
      #   @param created_at [Time] Date and time when Straddle created the capability request.
      #
      #   @param enable [Boolean] Whether the request enables or disables the capability.
      #
      #   @param status [Symbol, Straddle::Models::CapabilityRequest::Status] Status of the capability request.
      #
      #   @param type [Symbol, Straddle::Models::CapabilityRequest::Type] Capability type requested within the category.
      #
      #   @param updated_at [Time] Date and time of the most recent capability request update.
      #
      #   @param settings [Hash{Symbol=>Object}, nil] Limits and other settings requested for the capability.

      # Groups the requested capability. `payment_type` covers `charges` and `payouts`.
      # `customer_type` covers `individuals` and `businesses`. `consent_type` covers
      # `signed_agreement` and `internet` authorization.
      #
      # @see Straddle::Models::CapabilityRequest#category
      module Category
        extend Straddle::Internal::Type::Enum

        PAYMENT_TYPE = :payment_type
        CUSTOMER_TYPE = :customer_type
        CONSENT_TYPE = :consent_type

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the capability request.
      #
      # @see Straddle::Models::CapabilityRequest#status
      module Status
        extend Straddle::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive
        IN_REVIEW = :in_review
        REJECTED = :rejected
        APPROVED = :approved
        REVIEWING = :reviewing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Capability type requested within the category.
      #
      # @see Straddle::Models::CapabilityRequest#type
      module Type
        extend Straddle::Internal::Type::Enum

        CHARGES = :charges
        PAYOUTS = :payouts
        INDIVIDUALS = :individuals
        BUSINESSES = :businesses
        SIGNED_AGREEMENT = :signed_agreement
        INTERNET = :internet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
