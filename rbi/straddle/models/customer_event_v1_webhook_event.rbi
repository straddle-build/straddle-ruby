# typed: strong

module Straddle
  module Models
    class CustomerEventV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::CustomerEventV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::CustomerEventV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::CustomerEventV1WebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Unique identifier for this event.
      sig { returns(String) }
      attr_accessor :event_id

      # Type of this event.
      sig { returns(String) }
      attr_accessor :event_type

      sig do
        params(
          account_id: String,
          data: Straddle::CustomerEventV1WebhookEvent::Data::OrHash,
          event_id: String,
          event_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the account associated with this event.
        account_id:,
        data:,
        # Unique identifier for this event.
        event_id:,
        # Type of this event.
        event_type:
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            data: Straddle::CustomerEventV1WebhookEvent::Data,
            event_id: String,
            event_type: String
          }
        )
      end
      def to_hash
      end

      class Data < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CustomerEventV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the customer.
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the customer record was created.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Straddle::MaskedCustomerDevice) }
        attr_reader :device

        sig { params(device: Straddle::MaskedCustomerDevice::OrHash).void }
        attr_writer :device

        # Customer email address.
        sig { returns(String) }
        attr_accessor :email

        # Full name for an individual customer or business name for a business customer.
        sig { returns(String) }
        attr_accessor :name

        # Customer phone number in E.164 format.
        sig { returns(String) }
        attr_accessor :phone

        sig do
          returns(
            Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(Straddle::CustomerType::TaggedSymbol) }
        attr_accessor :type

        # Timestamp of the most recent update to the customer record.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          returns(
            T.nilable(Straddle::CustomerEventV1WebhookEvent::Data::Address)
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              Straddle::CustomerEventV1WebhookEvent::Data::Address::OrHash
          ).void
        end
        attr_writer :address

        sig do
          returns(
            T.nilable(
              Straddle::CustomerEventV1WebhookEvent::Data::ComplianceProfile
            )
          )
        end
        attr_reader :compliance_profile

        sig do
          params(
            compliance_profile:
              Straddle::CustomerEventV1WebhookEvent::Data::ComplianceProfile::OrHash
          ).void
        end
        attr_writer :compliance_profile

        # Unique identifier for the customer in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Up to 20 user-defined key-value pairs associated with the customer.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig do
          params(
            id: String,
            created_at: Time,
            device: Straddle::MaskedCustomerDevice::OrHash,
            email: String,
            name: String,
            phone: String,
            status:
              Straddle::CustomerEventV1WebhookEvent::Data::Status::OrSymbol,
            type: Straddle::CustomerType::OrSymbol,
            updated_at: Time,
            address:
              Straddle::CustomerEventV1WebhookEvent::Data::Address::OrHash,
            compliance_profile:
              Straddle::CustomerEventV1WebhookEvent::Data::ComplianceProfile::OrHash,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the customer.
          id:,
          # Timestamp of when the customer record was created.
          created_at:,
          device:,
          # Customer email address.
          email:,
          # Full name for an individual customer or business name for a business customer.
          name:,
          # Customer phone number in E.164 format.
          phone:,
          status:,
          type:,
          # Timestamp of the most recent update to the customer record.
          updated_at:,
          address: nil,
          compliance_profile: nil,
          # Unique identifier for the customer in your system.
          external_id: nil,
          # Up to 20 user-defined key-value pairs associated with the customer.
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              device: Straddle::MaskedCustomerDevice,
              email: String,
              name: String,
              phone: String,
              status:
                Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol,
              type: Straddle::CustomerType::TaggedSymbol,
              updated_at: Time,
              address: Straddle::CustomerEventV1WebhookEvent::Data::Address,
              compliance_profile:
                Straddle::CustomerEventV1WebhookEvent::Data::ComplianceProfile,
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
            }
          )
        end
        def to_hash
        end

        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::CustomerEventV1WebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REVIEW =
            T.let(
              :review,
              Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::CustomerEventV1WebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Address < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::CustomerEventV1WebhookEvent::Data::Address,
                Straddle::Internal::AnyHash
              )
            end

          # Primary address line, such as a street address or PO Box.
          sig { returns(String) }
          attr_accessor :address1

          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city

          # Two-letter state code.
          sig { returns(String) }
          attr_accessor :state

          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :zip

          # Secondary address line, such as an apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          attr_accessor :address2

          sig do
            params(
              address1: String,
              city: String,
              state: String,
              zip: String,
              address2: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Primary address line, such as a street address or PO Box.
            address1:,
            # City, district, suburb, town, or village.
            city:,
            # Two-letter state code.
            state:,
            # ZIP or postal code.
            zip:,
            # Secondary address line, such as an apartment, suite, unit, or building.
            address2: nil
          )
          end

          sig do
            override.returns(
              {
                address1: String,
                city: String,
                state: String,
                zip: String,
                address2: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class ComplianceProfile < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::CustomerEventV1WebhookEvent::Data::ComplianceProfile,
                Straddle::Internal::AnyHash
              )
            end

          # Masked date of birth for an individual customer in `****-**-**` format.
          sig { returns(T.nilable(String)) }
          attr_accessor :dob

          # Masked Employer Identification Number for a business customer in `**-*******`
          # format.
          sig { returns(T.nilable(String)) }
          attr_accessor :ein

          # Official registered name of the business customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :legal_business_name

          # Masked Social Security number for an individual customer in `***-**-****`
          # format.
          sig { returns(T.nilable(String)) }
          attr_accessor :ssn

          # Official website URL for the business customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :website

          sig do
            params(
              dob: T.nilable(String),
              ein: T.nilable(String),
              legal_business_name: T.nilable(String),
              ssn: T.nilable(String),
              website: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Masked date of birth for an individual customer in `****-**-**` format.
            dob: nil,
            # Masked Employer Identification Number for a business customer in `**-*******`
            # format.
            ein: nil,
            # Official registered name of the business customer.
            legal_business_name: nil,
            # Masked Social Security number for an individual customer in `***-**-****`
            # format.
            ssn: nil,
            # Official website URL for the business customer.
            website: nil
          )
          end

          sig do
            override.returns(
              {
                dob: T.nilable(String),
                ein: T.nilable(String),
                legal_business_name: T.nilable(String),
                ssn: T.nilable(String),
                website: T.nilable(String)
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
