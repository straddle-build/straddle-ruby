# typed: strong

module Straddle
  module Models
    class PlatformCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::PlatformCreatedV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::PlatformCreatedV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::PlatformCreatedV1WebhookEvent::Data::OrHash).void
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
          data: Straddle::PlatformCreatedV1WebhookEvent::Data::OrHash,
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
            data: Straddle::PlatformCreatedV1WebhookEvent::Data,
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
              Straddle::PlatformCreatedV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the platform.
        sig { returns(String) }
        attr_accessor :id

        # Current lifecycle status of the platform.
        sig do
          returns(
            Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail)
        end
        attr_reader :status_detail

        sig do
          params(
            status_detail:
              Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::OrHash
          ).void
        end
        attr_writer :status_detail

        sig do
          returns(
            T.nilable(
              Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile
            )
          )
        end
        attr_reader :business_profile

        sig do
          params(
            business_profile:
              Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::OrHash
          ).void
        end
        attr_writer :business_profile

        # Timestamp when the platform was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Your unique identifier for the platform.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # Key-value metadata associated with the platform.
        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        # Timestamp when the platform was last updated.
        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            status:
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::OrSymbol,
            status_detail:
              Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::OrHash,
            business_profile:
              Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::OrHash,
            created_at: T.nilable(Time),
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the platform.
          id:,
          # Current lifecycle status of the platform.
          status:,
          status_detail:,
          business_profile: nil,
          # Timestamp when the platform was created.
          created_at: nil,
          # Your unique identifier for the platform.
          external_id: nil,
          # Key-value metadata associated with the platform.
          metadata: nil,
          # Timestamp when the platform was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              status:
                Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol,
              status_detail:
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail,
              business_profile:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile,
              created_at: T.nilable(Time),
              external_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        # Current lifecycle status of the platform.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::PlatformCreatedV1WebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::PlatformCreatedV1WebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class StatusDetail < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail,
                Straddle::Internal::AnyHash
              )
            end

          # Machine-readable code for the current platform status.
          sig { returns(String) }
          attr_accessor :code

          # Human-readable explanation of the current platform status.
          sig { returns(String) }
          attr_accessor :message

          # Machine-readable reason for the current platform status.
          sig do
            returns(
              Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # Source that produced the current platform status.
          sig do
            returns(
              Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source::TaggedSymbol
            )
          end
          attr_accessor :source

          sig do
            params(
              code: String,
              message: String,
              reason:
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::OrSymbol,
              source:
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Machine-readable code for the current platform status.
            code:,
            # Human-readable explanation of the current platform status.
            message:,
            # Machine-readable reason for the current platform status.
            reason:,
            # Source that produced the current platform status.
            source:
          )
          end

          sig do
            override.returns(
              {
                code: String,
                message: String,
                reason:
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol,
                source:
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Machine-readable reason for the current platform status.
          module Reason
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNVERIFIED =
              T.let(
                :unverified,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            NEW =
              T.let(
                :new,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            IN_REVIEW =
              T.let(
                :in_review,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            STUCK =
              T.let(
                :stuck,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            FAILED_VERIFICATION =
              T.let(
                :failed_verification,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )
            TERMINATED =
              T.let(
                :terminated,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Reason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Source that produced the current platform status.
          module Source
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WATCHTOWER =
              T.let(
                :watchtower,
                Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::PlatformCreatedV1WebhookEvent::Data::StatusDetail::Source::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BusinessProfile < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile,
                Straddle::Internal::AnyHash
              )
            end

          # Display name of the business.
          sig { returns(String) }
          attr_accessor :name

          # URL of the business website.
          sig { returns(String) }
          attr_accessor :website

          sig do
            returns(
              T.nilable(
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Address
              )
            )
          end
          attr_reader :address

          sig do
            params(
              address:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Address::OrHash
            ).void
          end
          attr_writer :address

          # Description of the business.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig do
            returns(
              T.nilable(
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Industry
              )
            )
          end
          attr_reader :industry

          sig do
            params(
              industry:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Industry::OrHash
            ).void
          end
          attr_writer :industry

          # Registered legal name of the business.
          sig { returns(T.nilable(String)) }
          attr_accessor :legal_name

          # Primary phone number for the business.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone

          sig do
            returns(
              T.nilable(
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::SupportChannels
              )
            )
          end
          attr_reader :support_channels

          sig do
            params(
              support_channels:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::SupportChannels::OrHash
            ).void
          end
          attr_writer :support_channels

          # Tax identification number of the business.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id

          # Description of how the business uses Straddle.
          sig { returns(T.nilable(String)) }
          attr_accessor :use_case

          sig do
            params(
              name: String,
              website: String,
              address:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Address::OrHash,
              description: T.nilable(String),
              industry:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Industry::OrHash,
              legal_name: T.nilable(String),
              phone: T.nilable(String),
              support_channels:
                Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::SupportChannels::OrHash,
              tax_id: T.nilable(String),
              use_case: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Display name of the business.
            name:,
            # URL of the business website.
            website:,
            address: nil,
            # Description of the business.
            description: nil,
            industry: nil,
            # Registered legal name of the business.
            legal_name: nil,
            # Primary phone number for the business.
            phone: nil,
            support_channels: nil,
            # Tax identification number of the business.
            tax_id: nil,
            # Description of how the business uses Straddle.
            use_case: nil
          )
          end

          sig do
            override.returns(
              {
                name: String,
                website: String,
                address:
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Address,
                description: T.nilable(String),
                industry:
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Industry,
                legal_name: T.nilable(String),
                phone: T.nilable(String),
                support_channels:
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::SupportChannels,
                tax_id: T.nilable(String),
                use_case: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Address < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Address,
                  Straddle::Internal::AnyHash
                )
              end

            # City for the address.
            sig { returns(T.nilable(String)) }
            attr_accessor :city

            # Two-letter ISO 3166-1 country code.
            sig { returns(T.nilable(String)) }
            attr_accessor :country

            # Primary street address.
            sig { returns(T.nilable(String)) }
            attr_accessor :line1

            # Additional address information, such as a suite or unit.
            sig { returns(T.nilable(String)) }
            attr_accessor :line2

            # Postal code for the address.
            sig { returns(T.nilable(String)) }
            attr_accessor :postal_code

            # State or region for the address.
            sig { returns(T.nilable(String)) }
            attr_accessor :state

            sig do
              params(
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # City for the address.
              city: nil,
              # Two-letter ISO 3166-1 country code.
              country: nil,
              # Primary street address.
              line1: nil,
              # Additional address information, such as a suite or unit.
              line2: nil,
              # Postal code for the address.
              postal_code: nil,
              # State or region for the address.
              state: nil
            )
            end

            sig do
              override.returns(
                {
                  city: T.nilable(String),
                  country: T.nilable(String),
                  line1: T.nilable(String),
                  line2: T.nilable(String),
                  postal_code: T.nilable(String),
                  state: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Industry < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::Industry,
                  Straddle::Internal::AnyHash
                )
              end

            # Industry category of the business.
            sig { returns(T.nilable(String)) }
            attr_accessor :category

            # Merchant Category Code assigned to the business.
            sig { returns(T.nilable(String)) }
            attr_accessor :mcc

            # Industry sector of the business.
            sig { returns(T.nilable(String)) }
            attr_accessor :sector

            sig do
              params(
                category: T.nilable(String),
                mcc: T.nilable(String),
                sector: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Industry category of the business.
              category: nil,
              # Merchant Category Code assigned to the business.
              mcc: nil,
              # Industry sector of the business.
              sector: nil
            )
            end

            sig do
              override.returns(
                {
                  category: T.nilable(String),
                  mcc: T.nilable(String),
                  sector: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class SupportChannels < Straddle::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Straddle::PlatformCreatedV1WebhookEvent::Data::BusinessProfile::SupportChannels,
                  Straddle::Internal::AnyHash
                )
              end

            # Customer support email address.
            sig { returns(T.nilable(String)) }
            attr_accessor :email

            # Customer support phone number.
            sig { returns(T.nilable(String)) }
            attr_accessor :phone

            # URL of the customer support page or contact form.
            sig { returns(T.nilable(String)) }
            attr_accessor :url

            sig do
              params(
                email: T.nilable(String),
                phone: T.nilable(String),
                url: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Customer support email address.
              email: nil,
              # Customer support phone number.
              phone: nil,
              # URL of the customer support page or contact form.
              url: nil
            )
            end

            sig do
              override.returns(
                {
                  email: T.nilable(String),
                  phone: T.nilable(String),
                  url: T.nilable(String)
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
end
