# typed: strong

module Straddle
  module Models
    module ComplianceProfile
      extend Straddle::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Straddle::ComplianceProfile::IndividualComplianceProfile,
            Straddle::ComplianceProfile::BusinessComplianceProfile
          )
        end

      class IndividualComplianceProfile < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::ComplianceProfile::IndividualComplianceProfile,
              Straddle::Internal::AnyHash
            )
          end

        # Masked date of birth in `****-**-**` format.
        sig { returns(T.nilable(String)) }
        attr_accessor :dob

        # Masked Social Security number in `***-**-****` format.
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn

        sig do
          params(dob: T.nilable(String), ssn: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Masked date of birth in `****-**-**` format.
          dob:,
          # Masked Social Security number in `***-**-****` format.
          ssn:
        )
        end

        sig do
          override.returns({ dob: T.nilable(String), ssn: T.nilable(String) })
        end
        def to_hash
        end
      end

      class BusinessComplianceProfile < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::ComplianceProfile::BusinessComplianceProfile,
              Straddle::Internal::AnyHash
            )
          end

        # Masked Employer Identification Number in `**-*******` format.
        sig { returns(T.nilable(String)) }
        attr_accessor :ein

        # Official registered business name associated with `ein`.
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
          # Masked Employer Identification Number in `**-*******` format.
          ein:,
          # Official registered business name associated with `ein`.
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

      sig { override.returns(T::Array[Straddle::ComplianceProfile::Variants]) }
      def self.variants
      end
    end
  end
end
