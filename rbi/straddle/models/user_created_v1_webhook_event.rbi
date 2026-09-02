# typed: strong

module Straddle
  module Models
    class UserCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::UserCreatedV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::UserCreatedV1WebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Straddle::UserCreatedV1WebhookEvent::Data::OrHash).void
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
          data: Straddle::UserCreatedV1WebhookEvent::Data::OrHash,
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
            data: Straddle::UserCreatedV1WebhookEvent::Data,
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
              Straddle::UserCreatedV1WebhookEvent::Data,
              Straddle::Internal::AnyHash
            )
          end

        # The unique identifier of the user.
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the user was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The email address of the user.
        sig { returns(String) }
        attr_accessor :email

        # The first name of the user.
        sig { returns(String) }
        attr_accessor :first_name

        # The last name of the user.
        sig { returns(String) }
        attr_accessor :last_name

        # The current status of the user.
        sig do
          returns(
            Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
          )
        end
        attr_accessor :level

        # Memberships that grant the user access to Straddle entities.
        sig do
          returns(
            T::Array[Straddle::UserCreatedV1WebhookEvent::Data::Membership]
          )
        end
        attr_accessor :memberships

        # The role assigned to the user, determining their permissions within the system.
        sig do
          returns(
            T::Array[
              Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
            ]
          )
        end
        attr_accessor :roles

        # The current status of the user.
        sig do
          returns(
            Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp of the most recent update to the user.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The unique identifier used for authentication purposes.
        sig { returns(T.nilable(String)) }
        attr_accessor :authenticator_id

        # The unique identifier of the organization this user belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :organization_id

        # The unique identifier of the organization this user belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :platform_id

        sig do
          params(
            id: String,
            created_at: Time,
            email: String,
            first_name: String,
            last_name: String,
            level: Straddle::UserCreatedV1WebhookEvent::Data::Level::OrSymbol,
            memberships:
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::OrHash
              ],
            roles:
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Role::OrSymbol
              ],
            status: Straddle::UserCreatedV1WebhookEvent::Data::Status::OrSymbol,
            updated_at: Time,
            authenticator_id: T.nilable(String),
            organization_id: T.nilable(String),
            platform_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the user.
          id:,
          # Timestamp of when the user was created.
          created_at:,
          # The email address of the user.
          email:,
          # The first name of the user.
          first_name:,
          # The last name of the user.
          last_name:,
          # The current status of the user.
          level:,
          # Memberships that grant the user access to Straddle entities.
          memberships:,
          # The role assigned to the user, determining their permissions within the system.
          roles:,
          # The current status of the user.
          status:,
          # Timestamp of the most recent update to the user.
          updated_at:,
          # The unique identifier used for authentication purposes.
          authenticator_id: nil,
          # The unique identifier of the organization this user belongs to.
          organization_id: nil,
          # The unique identifier of the organization this user belongs to.
          platform_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              email: String,
              first_name: String,
              last_name: String,
              level:
                Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol,
              memberships:
                T::Array[Straddle::UserCreatedV1WebhookEvent::Data::Membership],
              roles:
                T::Array[
                  Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
                ],
              status:
                Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol,
              updated_at: Time,
              authenticator_id: T.nilable(String),
              organization_id: T.nilable(String),
              platform_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The current status of the user.
        module Level
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::UserCreatedV1WebhookEvent::Data::Level)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
            )
          STRADDLE =
            T.let(
              :straddle,
              Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
            )
          PLATFORM =
            T.let(
              :platform,
              Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
            )
          ORGANIZATION =
            T.let(
              :organization,
              Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Level::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Membership < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::UserCreatedV1WebhookEvent::Data::Membership,
                Straddle::Internal::AnyHash
              )
            end

          # Organization identifier used by the authentication provider.
          sig { returns(String) }
          attr_accessor :authenticator_organization_id

          # Display name of the entity associated with the membership.
          sig { returns(String) }
          attr_accessor :entity_name

          # Entity level at which the membership applies.
          sig do
            returns(
              Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
            )
          end
          attr_accessor :level

          # Roles granted by the membership.
          sig do
            returns(
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
              ]
            )
          end
          attr_accessor :roles

          # Unique identifier of the entity associated with the membership.
          sig { returns(T.nilable(String)) }
          attr_accessor :entity_id

          sig do
            params(
              authenticator_organization_id: String,
              entity_name: String,
              level:
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::OrSymbol,
              roles:
                T::Array[
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::OrSymbol
                ],
              entity_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Organization identifier used by the authentication provider.
            authenticator_organization_id:,
            # Display name of the entity associated with the membership.
            entity_name:,
            # Entity level at which the membership applies.
            level:,
            # Roles granted by the membership.
            roles:,
            # Unique identifier of the entity associated with the membership.
            entity_id: nil
          )
          end

          sig do
            override.returns(
              {
                authenticator_organization_id: String,
                entity_name: String,
                level:
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol,
                roles:
                  T::Array[
                    Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
                  ],
                entity_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Entity level at which the membership applies.
          module Level
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )
            ONBOARDING =
              T.let(
                :onboarding,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )
            ACCOUNT =
              T.let(
                :account,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )
            ORGANIZATION =
              T.let(
                :organization,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )
            PLATFORM =
              T.let(
                :platform,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )
            STRADDLE =
              T.let(
                :straddle,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Role
            extend Straddle::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
              )
            MEMBER =
              T.let(
                :member,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
              )
            DEVELOPER =
              T.let(
                :developer,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
              )
            ADMIN =
              T.let(
                :admin,
                Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Role
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::UserCreatedV1WebhookEvent::Data::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
            )
          MEMBER =
            T.let(
              :member,
              Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
            )
          DEVELOPER =
            T.let(
              :developer,
              Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
            )
          ADMIN =
            T.let(
              :admin,
              Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current status of the user.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Straddle::UserCreatedV1WebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVITED =
            T.let(
              :invited,
              Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          ONBOARDING =
            T.let(
              :onboarding,
              Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::UserCreatedV1WebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
