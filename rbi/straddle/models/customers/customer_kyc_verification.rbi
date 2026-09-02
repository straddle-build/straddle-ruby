# typed: strong

module Straddle
  module Models
    CustomerKYCVerification = Customers::CustomerKYCVerification

    module Customers
      class CustomerKYCVerification < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::CustomerKYCVerification,
              Straddle::Internal::AnyHash
            )
          end

        # Results for each Know Your Customer (KYC) validation.
        sig do
          returns(Straddle::Customers::CustomerKYCVerification::Validations)
        end
        attr_reader :validations

        sig do
          params(
            validations:
              Straddle::Customers::CustomerKYCVerification::Validations::OrHash
          ).void
        end
        attr_writer :validations

        # Result codes from Know Your Customer (KYC) screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

        sig do
          returns(
            T.nilable(Straddle::Customers::VerificationDecision::TaggedSymbol)
          )
        end
        attr_reader :decision

        sig do
          params(
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).void
        end
        attr_writer :decision

        sig do
          params(
            validations:
              Straddle::Customers::CustomerKYCVerification::Validations::OrHash,
            codes: T.nilable(T::Array[String]),
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Results for each Know Your Customer (KYC) validation.
          validations:,
          # Result codes from Know Your Customer (KYC) screening.
          codes: nil,
          decision: nil
        )
        end

        sig do
          override.returns(
            {
              validations:
                Straddle::Customers::CustomerKYCVerification::Validations,
              codes: T.nilable(T::Array[String]),
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Validations < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Customers::CustomerKYCVerification::Validations,
                Straddle::Internal::AnyHash
              )
            end

          # Whether the customer's address passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :address

          sig { params(address: T::Boolean).void }
          attr_writer :address

          # Whether the customer's city passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :city

          sig { params(city: T::Boolean).void }
          attr_writer :city

          # Whether the customer's date of birth passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :dob

          sig { params(dob: T::Boolean).void }
          attr_writer :dob

          # Whether the customer's email passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :email

          sig { params(email: T::Boolean).void }
          attr_writer :email

          # Whether the customer's first name passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :first_name

          sig { params(first_name: T::Boolean).void }
          attr_writer :first_name

          # Whether the customer's last name passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :last_name

          sig { params(last_name: T::Boolean).void }
          attr_writer :last_name

          # Whether the customer's phone passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :phone

          sig { params(phone: T::Boolean).void }
          attr_writer :phone

          # Whether the customer's Social Security number passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :ssn

          sig { params(ssn: T::Boolean).void }
          attr_writer :ssn

          # Whether the customer's state passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :state

          sig { params(state: T::Boolean).void }
          attr_writer :state

          # Whether the customer's ZIP code passed validation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :zip

          sig { params(zip: T::Boolean).void }
          attr_writer :zip

          # Results for each Know Your Customer (KYC) validation.
          sig do
            params(
              address: T::Boolean,
              city: T::Boolean,
              dob: T::Boolean,
              email: T::Boolean,
              first_name: T::Boolean,
              last_name: T::Boolean,
              phone: T::Boolean,
              ssn: T::Boolean,
              state: T::Boolean,
              zip: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the customer's address passed validation.
            address: nil,
            # Whether the customer's city passed validation.
            city: nil,
            # Whether the customer's date of birth passed validation.
            dob: nil,
            # Whether the customer's email passed validation.
            email: nil,
            # Whether the customer's first name passed validation.
            first_name: nil,
            # Whether the customer's last name passed validation.
            last_name: nil,
            # Whether the customer's phone passed validation.
            phone: nil,
            # Whether the customer's Social Security number passed validation.
            ssn: nil,
            # Whether the customer's state passed validation.
            state: nil,
            # Whether the customer's ZIP code passed validation.
            zip: nil
          )
          end

          sig do
            override.returns(
              {
                address: T::Boolean,
                city: T::Boolean,
                dob: T::Boolean,
                email: T::Boolean,
                first_name: T::Boolean,
                last_name: T::Boolean,
                phone: T::Boolean,
                ssn: T::Boolean,
                state: T::Boolean,
                zip: T::Boolean
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
