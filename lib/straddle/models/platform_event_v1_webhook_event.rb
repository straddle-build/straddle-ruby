# frozen_string_literal: true

module Straddle
  module Models
    class PlatformEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data]
      required :data, -> { Straddle::PlatformEventV1WebhookEvent::Data }

      # @!attribute event_id
      #   Unique identifier for this event.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   Type of this event.
      #
      #   @return [String]
      required :event_type, String

      # @!method initialize(account_id:, data:, event_id:, event_type:)
      #   @param account_id [String] Unique identifier for the account associated with this event.
      #
      #   @param data [Straddle::Models::PlatformEventV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::PlatformEventV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the platform.
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #   Current lifecycle status of the platform.
        #
        #   @return [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::Status]
        required :status, enum: -> { Straddle::PlatformEventV1WebhookEvent::Data::Status }

        # @!attribute status_detail
        #
        #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail]
        required :status_detail, -> { Straddle::PlatformEventV1WebhookEvent::Data::StatusDetail }

        # @!attribute business_profile
        #
        #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile, nil]
        optional :business_profile, -> { Straddle::PlatformEventV1WebhookEvent::Data::BusinessProfile }

        # @!attribute created_at
        #   Timestamp when the platform was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, nil?: true

        # @!attribute external_id
        #   Your unique identifier for the platform.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Key-value metadata associated with the platform.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!attribute updated_at
        #   Timestamp when the platform was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, nil?: true

        # @!method initialize(id:, status:, status_detail:, business_profile: nil, created_at: nil, external_id: nil, metadata: nil, updated_at: nil)
        #   @param id [String] Unique identifier for the platform.
        #
        #   @param status [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::Status] Current lifecycle status of the platform.
        #
        #   @param status_detail [Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail]
        #
        #   @param business_profile [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile]
        #
        #   @param created_at [Time, nil] Timestamp when the platform was created.
        #
        #   @param external_id [String, nil] Your unique identifier for the platform.
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Key-value metadata associated with the platform.
        #
        #   @param updated_at [Time, nil] Timestamp when the platform was last updated.

        # Current lifecycle status of the platform.
        #
        # @see Straddle::Models::PlatformEventV1WebhookEvent::Data#status
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

        # @see Straddle::Models::PlatformEventV1WebhookEvent::Data#status_detail
        class StatusDetail < Straddle::Internal::Type::BaseModel
          # @!attribute code
          #   Machine-readable code for the current platform status.
          #
          #   @return [String]
          required :code, String

          # @!attribute message
          #   Human-readable explanation of the current platform status.
          #
          #   @return [String]
          required :message, String

          # @!attribute reason
          #   Machine-readable reason for the current platform status.
          #
          #   @return [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail::Reason]
          required :reason, enum: -> { Straddle::PlatformEventV1WebhookEvent::Data::StatusDetail::Reason }

          # @!attribute source
          #   Source that produced the current platform status.
          #
          #   @return [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail::Source]
          required :source, enum: -> { Straddle::PlatformEventV1WebhookEvent::Data::StatusDetail::Source }

          # @!method initialize(code:, message:, reason:, source:)
          #   @param code [String] Machine-readable code for the current platform status.
          #
          #   @param message [String] Human-readable explanation of the current platform status.
          #
          #   @param reason [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail::Reason] Machine-readable reason for the current platform status.
          #
          #   @param source [Symbol, Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail::Source] Source that produced the current platform status.

          # Machine-readable reason for the current platform status.
          #
          # @see Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail#reason
          module Reason
            extend Straddle::Internal::Type::Enum

            UNVERIFIED = :unverified
            NEW = :new
            IN_REVIEW = :in_review
            PENDING = :pending
            STUCK = :stuck
            VERIFIED = :verified
            FAILED_VERIFICATION = :failed_verification
            DISABLED = :disabled
            TERMINATED = :terminated

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Source that produced the current platform status.
          #
          # @see Straddle::Models::PlatformEventV1WebhookEvent::Data::StatusDetail#source
          module Source
            extend Straddle::Internal::Type::Enum

            WATCHTOWER = :watchtower

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Straddle::Models::PlatformEventV1WebhookEvent::Data#business_profile
        class BusinessProfile < Straddle::Internal::Type::BaseModel
          # @!attribute name
          #   Display name of the business.
          #
          #   @return [String]
          required :name, String

          # @!attribute website
          #   URL of the business website.
          #
          #   @return [String]
          required :website, String

          # @!attribute address
          #
          #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::Address, nil]
          optional :address, -> { Straddle::PlatformEventV1WebhookEvent::Data::BusinessProfile::Address }

          # @!attribute description
          #   Description of the business.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute industry
          #
          #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::Industry, nil]
          optional :industry, -> { Straddle::PlatformEventV1WebhookEvent::Data::BusinessProfile::Industry }

          # @!attribute legal_name
          #   Registered legal name of the business.
          #
          #   @return [String, nil]
          optional :legal_name, String, nil?: true

          # @!attribute phone
          #   Primary phone number for the business.
          #
          #   @return [String, nil]
          optional :phone, String, nil?: true

          # @!attribute support_channels
          #
          #   @return [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::SupportChannels, nil]
          optional :support_channels,
                   -> { Straddle::PlatformEventV1WebhookEvent::Data::BusinessProfile::SupportChannels }

          # @!attribute tax_id
          #   Tax identification number of the business.
          #
          #   @return [String, nil]
          optional :tax_id, String, nil?: true

          # @!attribute use_case
          #   Description of how the business uses Straddle.
          #
          #   @return [String, nil]
          optional :use_case, String, nil?: true

          # @!method initialize(name:, website:, address: nil, description: nil, industry: nil, legal_name: nil, phone: nil, support_channels: nil, tax_id: nil, use_case: nil)
          #   @param name [String] Display name of the business.
          #
          #   @param website [String] URL of the business website.
          #
          #   @param address [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::Address]
          #
          #   @param description [String, nil] Description of the business.
          #
          #   @param industry [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::Industry]
          #
          #   @param legal_name [String, nil] Registered legal name of the business.
          #
          #   @param phone [String, nil] Primary phone number for the business.
          #
          #   @param support_channels [Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile::SupportChannels]
          #
          #   @param tax_id [String, nil] Tax identification number of the business.
          #
          #   @param use_case [String, nil] Description of how the business uses Straddle.

          # @see Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile#address
          class Address < Straddle::Internal::Type::BaseModel
            # @!attribute city
            #   City for the address.
            #
            #   @return [String, nil]
            optional :city, String, nil?: true

            # @!attribute country
            #   Two-letter ISO 3166-1 country code.
            #
            #   @return [String, nil]
            optional :country, String, nil?: true

            # @!attribute line1
            #   Primary street address.
            #
            #   @return [String, nil]
            optional :line1, String, nil?: true

            # @!attribute line2
            #   Additional address information, such as a suite or unit.
            #
            #   @return [String, nil]
            optional :line2, String, nil?: true

            # @!attribute postal_code
            #   Postal code for the address.
            #
            #   @return [String, nil]
            optional :postal_code, String, nil?: true

            # @!attribute state
            #   State or region for the address.
            #
            #   @return [String, nil]
            optional :state, String, nil?: true

            # @!method initialize(city: nil, country: nil, line1: nil, line2: nil, postal_code: nil, state: nil)
            #   @param city [String, nil] City for the address.
            #
            #   @param country [String, nil] Two-letter ISO 3166-1 country code.
            #
            #   @param line1 [String, nil] Primary street address.
            #
            #   @param line2 [String, nil] Additional address information, such as a suite or unit.
            #
            #   @param postal_code [String, nil] Postal code for the address.
            #
            #   @param state [String, nil] State or region for the address.
          end

          # @see Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile#industry
          class Industry < Straddle::Internal::Type::BaseModel
            # @!attribute category
            #   Industry category of the business.
            #
            #   @return [String, nil]
            optional :category, String, nil?: true

            # @!attribute mcc
            #   Merchant Category Code assigned to the business.
            #
            #   @return [String, nil]
            optional :mcc, String, nil?: true

            # @!attribute sector
            #   Industry sector of the business.
            #
            #   @return [String, nil]
            optional :sector, String, nil?: true

            # @!method initialize(category: nil, mcc: nil, sector: nil)
            #   @param category [String, nil] Industry category of the business.
            #
            #   @param mcc [String, nil] Merchant Category Code assigned to the business.
            #
            #   @param sector [String, nil] Industry sector of the business.
          end

          # @see Straddle::Models::PlatformEventV1WebhookEvent::Data::BusinessProfile#support_channels
          class SupportChannels < Straddle::Internal::Type::BaseModel
            # @!attribute email
            #   Customer support email address.
            #
            #   @return [String, nil]
            optional :email, String, nil?: true

            # @!attribute phone
            #   Customer support phone number.
            #
            #   @return [String, nil]
            optional :phone, String, nil?: true

            # @!attribute url
            #   URL of the customer support page or contact form.
            #
            #   @return [String, nil]
            optional :url, String, nil?: true

            # @!method initialize(email: nil, phone: nil, url: nil)
            #   @param email [String, nil] Customer support email address.
            #
            #   @param phone [String, nil] Customer support phone number.
            #
            #   @param url [String, nil] URL of the customer support page or contact form.
          end
        end
      end
    end
  end
end
