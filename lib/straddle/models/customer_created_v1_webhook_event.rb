# frozen_string_literal: true

module Straddle
  module Models
    class CustomerCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::CustomerCreatedV1WebhookEvent::Data]
      required :data, -> { Straddle::CustomerCreatedV1WebhookEvent::Data }

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
      #   @param data [Straddle::Models::CustomerCreatedV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::CustomerCreatedV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
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

        # @!attribute device
        #
        #   @return [Straddle::Models::MaskedCustomerDevice]
        required :device, -> { Straddle::MaskedCustomerDevice }

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
        #   @return [Symbol, Straddle::Models::CustomerCreatedV1WebhookEvent::Data::Status]
        required :status, enum: -> { Straddle::CustomerCreatedV1WebhookEvent::Data::Status }

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
        #
        #   @return [Straddle::Models::CustomerCreatedV1WebhookEvent::Data::Address, nil]
        optional :address, -> { Straddle::CustomerCreatedV1WebhookEvent::Data::Address }

        # @!attribute compliance_profile
        #
        #   @return [Straddle::Models::CustomerCreatedV1WebhookEvent::Data::ComplianceProfile, nil]
        optional :compliance_profile, -> { Straddle::CustomerCreatedV1WebhookEvent::Data::ComplianceProfile }

        # @!attribute external_id
        #   Unique identifier for the customer in your system.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute metadata
        #   Up to 20 user-defined key-value pairs associated with the customer.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!method initialize(id:, created_at:, device:, email:, name:, phone:, status:, type:, updated_at:, address: nil, compliance_profile: nil, external_id: nil, metadata: nil)
        #   @param id [String] Unique identifier for the customer.
        #
        #   @param created_at [Time] Timestamp of when the customer record was created.
        #
        #   @param device [Straddle::Models::MaskedCustomerDevice]
        #
        #   @param email [String] Customer email address.
        #
        #   @param name [String] Full name for an individual customer or business name for a business customer.
        #
        #   @param phone [String] Customer phone number in E.164 format.
        #
        #   @param status [Symbol, Straddle::Models::CustomerCreatedV1WebhookEvent::Data::Status]
        #
        #   @param type [Symbol, Straddle::Models::CustomerType]
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the customer record.
        #
        #   @param address [Straddle::Models::CustomerCreatedV1WebhookEvent::Data::Address]
        #
        #   @param compliance_profile [Straddle::Models::CustomerCreatedV1WebhookEvent::Data::ComplianceProfile]
        #
        #   @param external_id [String, nil] Unique identifier for the customer in your system.
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs associated with the customer.

        # @see Straddle::Models::CustomerCreatedV1WebhookEvent::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          PENDING = :pending
          REVIEW = :review
          VERIFIED = :verified
          INACTIVE = :inactive
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Straddle::Models::CustomerCreatedV1WebhookEvent::Data#address
        class Address < Straddle::Internal::Type::BaseModel
          # @!attribute address1
          #   Primary address line, such as a street address or PO Box.
          #
          #   @return [String]
          required :address1, String

          # @!attribute city
          #   City, district, suburb, town, or village.
          #
          #   @return [String]
          required :city, String

          # @!attribute state
          #   Two-letter state code.
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   ZIP or postal code.
          #
          #   @return [String]
          required :zip, String

          # @!attribute address2
          #   Secondary address line, such as an apartment, suite, unit, or building.
          #
          #   @return [String, nil]
          optional :address2, String, nil?: true

          # @!method initialize(address1:, city:, state:, zip:, address2: nil)
          #   @param address1 [String] Primary address line, such as a street address or PO Box.
          #
          #   @param city [String] City, district, suburb, town, or village.
          #
          #   @param state [String] Two-letter state code.
          #
          #   @param zip [String] ZIP or postal code.
          #
          #   @param address2 [String, nil] Secondary address line, such as an apartment, suite, unit, or building.
        end

        # @see Straddle::Models::CustomerCreatedV1WebhookEvent::Data#compliance_profile
        class ComplianceProfile < Straddle::Internal::Type::BaseModel
          # @!attribute dob
          #   Masked date of birth for an individual customer in `****-**-**` format.
          #
          #   @return [String, nil]
          optional :dob, String, nil?: true

          # @!attribute ein
          #   Masked Employer Identification Number for a business customer in `**-*******`
          #   format.
          #
          #   @return [String, nil]
          optional :ein, String, nil?: true

          # @!attribute legal_business_name
          #   Official registered name of the business customer.
          #
          #   @return [String, nil]
          optional :legal_business_name, String, nil?: true

          # @!attribute ssn
          #   Masked Social Security number for an individual customer in `***-**-****`
          #   format.
          #
          #   @return [String, nil]
          optional :ssn, String, nil?: true

          # @!attribute website
          #   Official website URL for the business customer.
          #
          #   @return [String, nil]
          optional :website, String, nil?: true

          # @!method initialize(dob: nil, ein: nil, legal_business_name: nil, ssn: nil, website: nil)
          #   Some parameter documentations has been truncated, see
          #   {Straddle::Models::CustomerCreatedV1WebhookEvent::Data::ComplianceProfile} for
          #   more details.
          #
          #   @param dob [String, nil] Masked date of birth for an individual customer in `****-**-**` format.
          #
          #   @param ein [String, nil] Masked Employer Identification Number for a business customer in `**-*******` fo
          #
          #   @param legal_business_name [String, nil] Official registered name of the business customer.
          #
          #   @param ssn [String, nil] Masked Social Security number for an individual customer in `***-**-****` format
          #
          #   @param website [String, nil] Official website URL for the business customer.
        end
      end
    end
  end
end
