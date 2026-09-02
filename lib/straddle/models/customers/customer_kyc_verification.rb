# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class CustomerKYCVerification < Straddle::Internal::Type::BaseModel
        # @!attribute validations
        #   Results for each Know Your Customer (KYC) validation.
        #
        #   @return [Straddle::Models::Customers::CustomerKYCVerification::Validations]
        required :validations, -> { Straddle::Customers::CustomerKYCVerification::Validations }

        # @!attribute codes
        #   Result codes from Know Your Customer (KYC) screening.
        #
        #   @return [Array<String>, nil]
        optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision, nil]
        optional :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!method initialize(validations:, codes: nil, decision: nil)
        #   @param validations [Straddle::Models::Customers::CustomerKYCVerification::Validations] Results for each Know Your Customer (KYC) validation.
        #
        #   @param codes [Array<String>, nil] Result codes from Know Your Customer (KYC) screening.
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]

        # @see Straddle::Models::Customers::CustomerKYCVerification#validations
        class Validations < Straddle::Internal::Type::BaseModel
          # @!attribute address
          #   Whether the customer's address passed validation.
          #
          #   @return [Boolean, nil]
          optional :address, Straddle::Internal::Type::Boolean

          # @!attribute city
          #   Whether the customer's city passed validation.
          #
          #   @return [Boolean, nil]
          optional :city, Straddle::Internal::Type::Boolean

          # @!attribute dob
          #   Whether the customer's date of birth passed validation.
          #
          #   @return [Boolean, nil]
          optional :dob, Straddle::Internal::Type::Boolean

          # @!attribute email
          #   Whether the customer's email passed validation.
          #
          #   @return [Boolean, nil]
          optional :email, Straddle::Internal::Type::Boolean

          # @!attribute first_name
          #   Whether the customer's first name passed validation.
          #
          #   @return [Boolean, nil]
          optional :first_name, Straddle::Internal::Type::Boolean

          # @!attribute last_name
          #   Whether the customer's last name passed validation.
          #
          #   @return [Boolean, nil]
          optional :last_name, Straddle::Internal::Type::Boolean

          # @!attribute phone
          #   Whether the customer's phone passed validation.
          #
          #   @return [Boolean, nil]
          optional :phone, Straddle::Internal::Type::Boolean

          # @!attribute ssn
          #   Whether the customer's Social Security number passed validation.
          #
          #   @return [Boolean, nil]
          optional :ssn, Straddle::Internal::Type::Boolean

          # @!attribute state
          #   Whether the customer's state passed validation.
          #
          #   @return [Boolean, nil]
          optional :state, Straddle::Internal::Type::Boolean

          # @!attribute zip
          #   Whether the customer's ZIP code passed validation.
          #
          #   @return [Boolean, nil]
          optional :zip, Straddle::Internal::Type::Boolean

          # @!method initialize(address: nil, city: nil, dob: nil, email: nil, first_name: nil, last_name: nil, phone: nil, ssn: nil, state: nil, zip: nil)
          #   Results for each Know Your Customer (KYC) validation.
          #
          #   @param address [Boolean] Whether the customer's address passed validation.
          #
          #   @param city [Boolean] Whether the customer's city passed validation.
          #
          #   @param dob [Boolean] Whether the customer's date of birth passed validation.
          #
          #   @param email [Boolean] Whether the customer's email passed validation.
          #
          #   @param first_name [Boolean] Whether the customer's first name passed validation.
          #
          #   @param last_name [Boolean] Whether the customer's last name passed validation.
          #
          #   @param phone [Boolean] Whether the customer's phone passed validation.
          #
          #   @param ssn [Boolean] Whether the customer's Social Security number passed validation.
          #
          #   @param state [Boolean] Whether the customer's state passed validation.
          #
          #   @param zip [Boolean] Whether the customer's ZIP code passed validation.
        end
      end
    end

    CustomerKYCVerification = Customers::CustomerKYCVerification
  end
end
