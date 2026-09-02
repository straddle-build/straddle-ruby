# frozen_string_literal: true

module Straddle
  module Models
    class Representative < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the representative.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   ID of the account associated with the representative.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute created_at
      #   Date and time when Straddle created the representative.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute dob
      #   Representative's date of birth in `YYYY-MM-DD` format.
      #
      #   @return [Date]
      required :dob, Date

      # @!attribute email
      #   Representative's email address.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute first_name
      #   Representative's first name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   Representative's last name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute mobile_number
      #   Representative's mobile phone number in E.164 format.
      #
      #   @return [String]
      required :mobile_number, String

      # @!attribute name
      #   Representative's display name.
      #
      #   @return [String]
      required :name, String

      # @!attribute relationship
      #
      #   @return [Straddle::Models::RepresentativeRelationship]
      required :relationship, -> { Straddle::RepresentativeRelationship }

      # @!attribute ssn_last4
      #   Last four digits of the representative's Social Security number.
      #
      #   @return [String]
      required :ssn_last4, String

      # @!attribute status
      #   Status of the representative.
      #
      #   @return [Symbol, Straddle::Models::Representative::Status]
      required :status, enum: -> { Straddle::Representative::Status }

      # @!attribute status_detail
      #
      #   @return [Straddle::Models::RepresentativeStatusDetail]
      required :status_detail, -> { Straddle::RepresentativeStatusDetail }

      # @!attribute updated_at
      #   Date and time of the most recent representative update.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute external_id
      #   Your unique ID for the representative.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute phone
      #   Representative's phone number.
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute user_id
      #   ID of the Straddle user linked to the representative, if any.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(id:, account_id:, created_at:, dob:, email:, first_name:, last_name:, mobile_number:, name:, relationship:, ssn_last4:, status:, status_detail:, updated_at:, external_id: nil, metadata: nil, phone: nil, user_id: nil)
      #   @param id [String] Straddle's unique ID for the representative.
      #
      #   @param account_id [String] ID of the account associated with the representative.
      #
      #   @param created_at [Time] Date and time when Straddle created the representative.
      #
      #   @param dob [Date] Representative's date of birth in `YYYY-MM-DD` format.
      #
      #   @param email [String, nil] Representative's email address.
      #
      #   @param first_name [String] Representative's first name.
      #
      #   @param last_name [String] Representative's last name.
      #
      #   @param mobile_number [String] Representative's mobile phone number in E.164 format.
      #
      #   @param name [String] Representative's display name.
      #
      #   @param relationship [Straddle::Models::RepresentativeRelationship]
      #
      #   @param ssn_last4 [String] Last four digits of the representative's Social Security number.
      #
      #   @param status [Symbol, Straddle::Models::Representative::Status] Status of the representative.
      #
      #   @param status_detail [Straddle::Models::RepresentativeStatusDetail]
      #
      #   @param updated_at [Time] Date and time of the most recent representative update.
      #
      #   @param external_id [String, nil] Your unique ID for the representative.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param phone [String, nil] Representative's phone number.
      #
      #   @param user_id [String, nil] ID of the Straddle user linked to the representative, if any.

      # Status of the representative.
      #
      # @see Straddle::Models::Representative#status
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
    end
  end
end
