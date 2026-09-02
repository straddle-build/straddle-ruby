# frozen_string_literal: true

module Straddle
  module Models
    module ComplianceProfile
      extend Straddle::Internal::Type::Union

      variant -> { Straddle::ComplianceProfile::IndividualComplianceProfile }

      variant -> { Straddle::ComplianceProfile::BusinessComplianceProfile }

      class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
        # @!attribute dob
        #   Masked date of birth in `****-**-**` format.
        #
        #   @return [String, nil]
        required :dob, String, nil?: true

        # @!attribute ssn
        #   Masked Social Security number in `***-**-****` format.
        #
        #   @return [String, nil]
        required :ssn, String, nil?: true

        # @!method initialize(dob:, ssn:)
        #   @param dob [String, nil] Masked date of birth in `****-**-**` format.
        #
        #   @param ssn [String, nil] Masked Social Security number in `***-**-****` format.
      end

      class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
        # @!attribute ein
        #   Masked Employer Identification Number in `**-*******` format.
        #
        #   @return [String, nil]
        required :ein, String, nil?: true

        # @!attribute legal_business_name
        #   Official registered business name associated with `ein`.
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
        #   {Straddle::Models::ComplianceProfile::BusinessComplianceProfile} for more
        #   details.
        #
        #   @param ein [String, nil] Masked Employer Identification Number in `**-*******` format.
        #
        #   @param legal_business_name [String, nil] Official registered business name associated with `ein`.
        #
        #   @param representatives [Array<Straddle::Models::BusinessCustomerRepresentative>, nil] Representatives associated with the business. Valid only for `business` customer
        #
        #   @param website [String, nil] Official business website URL.
      end

      # @!method self.variants
      #   @return [Array(Straddle::Models::ComplianceProfile::IndividualComplianceProfile, Straddle::Models::ComplianceProfile::BusinessComplianceProfile)]
    end
  end
end
