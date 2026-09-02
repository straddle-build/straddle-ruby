# frozen_string_literal: true

module Straddle
  module Models
    module UnmaskedComplianceProfile
      extend Straddle::Internal::Type::Union

      variant -> { Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile }

      variant -> { Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile }

      class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
        # @!attribute dob
        #   Date of birth in `YYYY-MM-DD` format. Required for Patriot Act-compliant KYC
        #   verification.
        #
        #   @return [Date, nil]
        required :dob, Date, nil?: true

        # @!attribute ssn
        #   Social Security number in `XXX-XX-XXXX` format. Required for Patriot
        #   Act-compliant KYC verification.
        #
        #   @return [String, nil]
        required :ssn, String, nil?: true

        # @!method initialize(dob:, ssn:)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile} for
        #   more details.
        #
        #   @param dob [Date, nil] Date of birth in `YYYY-MM-DD` format. Required for Patriot Act-compliant KYC ver
        #
        #   @param ssn [String, nil] Social Security number in `XXX-XX-XXXX` format. Required for Patriot Act-complia
      end

      class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
        # @!attribute ein
        #   Employer Identification Number in `XX-XXXXXXX` format. Required for Patriot
        #   Act-compliant KYB verification.
        #
        #   @return [String, nil]
        required :ein, String, nil?: true

        # @!attribute legal_business_name
        #   Official business name registered with the IRS.
        #
        #   @return [String, nil]
        required :legal_business_name, String, nil?: true

        # @!attribute representatives
        #   Representatives associated with the business. Valid only for `business`
        #   customers.
        #
        #   @return [Array<Straddle::Models::BusinessCustomerRepresentative>, nil]
        optional :representatives,
                 -> { Straddle::Internal::Type::ArrayOf[Straddle::BusinessCustomerRepresentative] },
                 nil?: true

        # @!attribute website
        #   Official business website URL.
        #
        #   @return [String, nil]
        optional :website, String, nil?: true

        # @!method initialize(ein:, legal_business_name:, representatives: nil, website: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile} for
        #   more details.
        #
        #   @param ein [String, nil] Employer Identification Number in `XX-XXXXXXX` format. Required for Patriot Act-
        #
        #   @param legal_business_name [String, nil] Official business name registered with the IRS.
        #
        #   @param representatives [Array<Straddle::Models::BusinessCustomerRepresentative>, nil] Representatives associated with the business. Valid only for `business` customer
        #
        #   @param website [String, nil] Official business website URL.
      end

      # @!method self.variants
      #   @return [Array(Straddle::Models::UnmaskedComplianceProfile::IndividualComplianceProfile, Straddle::Models::UnmaskedComplianceProfile::BusinessComplianceProfile)]
    end
  end
end
