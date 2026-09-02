# typed: strong

module Straddle
  module Models
    module UnmaskedComplianceProfile
      extend Straddle::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile,
            Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile
          )
        end

      class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::UnmaskedComplianceProfile::IndividualComplianceProfile,
              Straddle::Internal::AnyHash
            )
          end

        # Date of birth in `YYYY-MM-DD` format. Required for Patriot Act-compliant KYC
        # verification.
        sig { returns(T.nilable(Date)) }
        attr_accessor :dob

        # Social Security number in `XXX-XX-XXXX` format. Required for Patriot
        # Act-compliant KYC verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn

        sig do
          params(dob: T.nilable(Date), ssn: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Date of birth in `YYYY-MM-DD` format. Required for Patriot Act-compliant KYC
          # verification.
          dob:,
          # Social Security number in `XXX-XX-XXXX` format. Required for Patriot
          # Act-compliant KYC verification.
          ssn:
        )
        end

        sig do
          override.returns({ dob: T.nilable(Date), ssn: T.nilable(String) })
        end
        def to_hash
        end
      end

      class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::UnmaskedComplianceProfile::BusinessComplianceProfile,
              Straddle::Internal::AnyHash
            )
          end

        # Employer Identification Number in `XX-XXXXXXX` format. Required for Patriot
        # Act-compliant KYB verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :ein

        # Official business name registered with the IRS.
        sig { returns(T.nilable(String)) }
        attr_accessor :legal_business_name

        # Representatives associated with the business. Valid only for `business`
        # customers.
        sig do
          returns(T.nilable(T::Array[Straddle::BusinessCustomerRepresentative]))
        end
        attr_accessor :representatives

        # Official business website URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :website

        sig do
          params(
            ein: T.nilable(String),
            legal_business_name: T.nilable(String),
            representatives:
              T.nilable(
                T::Array[Straddle::BusinessCustomerRepresentative::OrHash]
              ),
            website: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Employer Identification Number in `XX-XXXXXXX` format. Required for Patriot
          # Act-compliant KYB verification.
          ein:,
          # Official business name registered with the IRS.
          legal_business_name:,
          # Representatives associated with the business. Valid only for `business`
          # customers.
          representatives: nil,
          # Official business website URL.
          website: nil
        )
        end

        sig do
          override.returns(
            {
              ein: T.nilable(String),
              legal_business_name: T.nilable(String),
              representatives:
                T.nilable(T::Array[Straddle::BusinessCustomerRepresentative]),
              website: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Straddle::UnmaskedComplianceProfile::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
