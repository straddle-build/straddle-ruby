# frozen_string_literal: true

module Straddle
  module Models
    class Account < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the account.
      #
      #   @return [String]
      required :id, String

      # @!attribute access_level
      #   The account access level. `standard` provides normal account access, including
      #   access to the Straddle dashboard. `managed` means the platform manages the
      #   account and account users cannot access the Straddle dashboard.
      #
      #   @return [Symbol, Straddle::Models::Account::AccessLevel]
      required :access_level, enum: -> { Straddle::Account::AccessLevel }

      # @!attribute organization_id
      #   ID of the organization that owns the account.
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute status
      #   The current lifecycle status of the account.
      #
      #   @return [Symbol, Straddle::Models::Account::Status]
      required :status, enum: -> { Straddle::Account::Status }

      # @!attribute status_detail
      #
      #   @return [Straddle::Models::AccountStatusDetail]
      required :status_detail, -> { Straddle::AccountStatusDetail }

      # @!attribute type
      #   The account type. Only `business` is supported.
      #
      #   @return [Symbol, Straddle::Models::Account::Type]
      required :type, enum: -> { Straddle::Account::Type }

      # @!attribute business_profile
      #
      #   @return [Straddle::Models::AccountBusinessProfile, nil]
      optional :business_profile, -> { Straddle::AccountBusinessProfile }

      # @!attribute capabilities
      #
      #   @return [Straddle::Models::AccountCapabilities, nil]
      optional :capabilities, -> { Straddle::AccountCapabilities }

      # @!attribute created_at
      #   Date and time when Straddle created the account.
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

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

      # @!attribute settings
      #
      #   @return [Straddle::Models::AccountPaymentSettings, nil]
      optional :settings, -> { Straddle::AccountPaymentSettings }

      # @!attribute terms_of_service
      #
      #   @return [Straddle::Models::TermsOfService, nil]
      optional :terms_of_service, -> { Straddle::TermsOfService }

      # @!attribute updated_at
      #   Date and time of the most recent account update.
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(id:, access_level:, organization_id:, status:, status_detail:, type:, business_profile: nil, capabilities: nil, created_at: nil, external_id: nil, metadata: nil, settings: nil, terms_of_service: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::Account} for more details.
      #
      #   @param id [String] Straddle's unique ID for the account.
      #
      #   @param access_level [Symbol, Straddle::Models::Account::AccessLevel] The account access level. `standard` provides normal account access, including a
      #
      #   @param organization_id [String] ID of the organization that owns the account.
      #
      #   @param status [Symbol, Straddle::Models::Account::Status] The current lifecycle status of the account.
      #
      #   @param status_detail [Straddle::Models::AccountStatusDetail]
      #
      #   @param type [Symbol, Straddle::Models::Account::Type] The account type. Only `business` is supported.
      #
      #   @param business_profile [Straddle::Models::AccountBusinessProfile]
      #
      #   @param capabilities [Straddle::Models::AccountCapabilities]
      #
      #   @param created_at [Time, nil] Date and time when Straddle created the account.
      #
      #   @param external_id [String, nil] Your unique ID for the account.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param settings [Straddle::Models::AccountPaymentSettings]
      #
      #   @param terms_of_service [Straddle::Models::TermsOfService]
      #
      #   @param updated_at [Time, nil] Date and time of the most recent account update.

      # The account access level. `standard` provides normal account access, including
      # access to the Straddle dashboard. `managed` means the platform manages the
      # account and account users cannot access the Straddle dashboard.
      #
      # @see Straddle::Models::Account#access_level
      module AccessLevel
        extend Straddle::Internal::Type::Enum

        STANDARD = :standard
        MANAGED = :managed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The current lifecycle status of the account.
      #
      # @see Straddle::Models::Account#status
      module Status
        extend Straddle::Internal::Type::Enum

        CREATED = :created
        ONBOARDING = :onboarding
        ACTIVE = :active
        REJECTED = :rejected
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The account type. Only `business` is supported.
      #
      # @see Straddle::Models::Account#type
      module Type
        extend Straddle::Internal::Type::Enum

        BUSINESS = :business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
