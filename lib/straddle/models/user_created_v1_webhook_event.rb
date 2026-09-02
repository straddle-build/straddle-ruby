# frozen_string_literal: true

module Straddle
  module Models
    class UserCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      # @!attribute account_id
      #   Unique identifier for the account associated with this event.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute data
      #
      #   @return [Straddle::Models::UserCreatedV1WebhookEvent::Data]
      required :data, -> { Straddle::UserCreatedV1WebhookEvent::Data }

      # @!attribute event_id
      #   Unique identifier for this event.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   Type of this event.
      #
      #   @return [String]
      required :event_type, String

      # @!method initialize(account_id:, data:, event_id:, event_type:)
      #   @param account_id [String] Unique identifier for the account associated with this event.
      #
      #   @param data [Straddle::Models::UserCreatedV1WebhookEvent::Data]
      #
      #   @param event_id [String] Unique identifier for this event.
      #
      #   @param event_type [String] Type of this event.

      # @see Straddle::Models::UserCreatedV1WebhookEvent#data
      class Data < Straddle::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp of when the user was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute email
        #   The email address of the user.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The first name of the user.
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   The last name of the user.
        #
        #   @return [String]
        required :last_name, String

        # @!attribute level
        #   The current status of the user.
        #
        #   @return [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Level]
        required :level, enum: -> { Straddle::UserCreatedV1WebhookEvent::Data::Level }

        # @!attribute memberships
        #   Memberships that grant the user access to Straddle entities.
        #
        #   @return [Array<Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership>]
        required :memberships,
                 -> do
                   Straddle::Internal::Type::ArrayOf[Straddle::UserCreatedV1WebhookEvent::Data::Membership]
                 end

        # @!attribute roles
        #   The role assigned to the user, determining their permissions within the system.
        #
        #   @return [Array<Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Role>]
        required :roles,
                 -> do
                   Straddle::Internal::Type::ArrayOf[enum: Straddle::UserCreatedV1WebhookEvent::Data::Role]
                 end

        # @!attribute status
        #   The current status of the user.
        #
        #   @return [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Status]
        required :status, enum: -> { Straddle::UserCreatedV1WebhookEvent::Data::Status }

        # @!attribute updated_at
        #   Timestamp of the most recent update to the user.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute authenticator_id
        #   The unique identifier used for authentication purposes.
        #
        #   @return [String, nil]
        optional :authenticator_id, String, nil?: true

        # @!attribute organization_id
        #   The unique identifier of the organization this user belongs to.
        #
        #   @return [String, nil]
        optional :organization_id, String, nil?: true

        # @!attribute platform_id
        #   The unique identifier of the organization this user belongs to.
        #
        #   @return [String, nil]
        optional :platform_id, String, nil?: true

        # @!method initialize(id:, created_at:, email:, first_name:, last_name:, level:, memberships:, roles:, status:, updated_at:, authenticator_id: nil, organization_id: nil, platform_id: nil)
        #   @param id [String] The unique identifier of the user.
        #
        #   @param created_at [Time] Timestamp of when the user was created.
        #
        #   @param email [String] The email address of the user.
        #
        #   @param first_name [String] The first name of the user.
        #
        #   @param last_name [String] The last name of the user.
        #
        #   @param level [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Level] The current status of the user.
        #
        #   @param memberships [Array<Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership>] Memberships that grant the user access to Straddle entities.
        #
        #   @param roles [Array<Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Role>] The role assigned to the user, determining their permissions within the system.
        #
        #   @param status [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Status] The current status of the user.
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the user.
        #
        #   @param authenticator_id [String, nil] The unique identifier used for authentication purposes.
        #
        #   @param organization_id [String, nil] The unique identifier of the organization this user belongs to.
        #
        #   @param platform_id [String, nil] The unique identifier of the organization this user belongs to.

        # The current status of the user.
        #
        # @see Straddle::Models::UserCreatedV1WebhookEvent::Data#level
        module Level
          extend Straddle::Internal::Type::Enum

          NONE = :none
          ONBOARDING = :onboarding
          STRADDLE = :straddle
          PLATFORM = :platform
          ORGANIZATION = :organization

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Membership < Straddle::Internal::Type::BaseModel
          # @!attribute authenticator_organization_id
          #   Organization identifier used by the authentication provider.
          #
          #   @return [String]
          required :authenticator_organization_id, String

          # @!attribute entity_name
          #   Display name of the entity associated with the membership.
          #
          #   @return [String]
          required :entity_name, String

          # @!attribute level
          #   Entity level at which the membership applies.
          #
          #   @return [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership::Level]
          required :level, enum: -> { Straddle::UserCreatedV1WebhookEvent::Data::Membership::Level }

          # @!attribute roles
          #   Roles granted by the membership.
          #
          #   @return [Array<Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership::Role>]
          required :roles,
                   -> do
                     Straddle::Internal::Type::ArrayOf[
                       enum: Straddle::UserCreatedV1WebhookEvent::Data::Membership::Role
                     ]
                   end

          # @!attribute entity_id
          #   Unique identifier of the entity associated with the membership.
          #
          #   @return [String, nil]
          optional :entity_id, String, nil?: true

          # @!method initialize(authenticator_organization_id:, entity_name:, level:, roles:, entity_id: nil)
          #   @param authenticator_organization_id [String] Organization identifier used by the authentication provider.
          #
          #   @param entity_name [String] Display name of the entity associated with the membership.
          #
          #   @param level [Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership::Level] Entity level at which the membership applies.
          #
          #   @param roles [Array<Symbol, Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership::Role>] Roles granted by the membership.
          #
          #   @param entity_id [String, nil] Unique identifier of the entity associated with the membership.

          # Entity level at which the membership applies.
          #
          # @see Straddle::Models::UserCreatedV1WebhookEvent::Data::Membership#level
          module Level
            extend Straddle::Internal::Type::Enum

            NONE = :none
            ONBOARDING = :onboarding
            ACCOUNT = :account
            ORGANIZATION = :organization
            PLATFORM = :platform
            STRADDLE = :straddle

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module Role
            extend Straddle::Internal::Type::Enum

            NONE = :none
            MEMBER = :member
            DEVELOPER = :developer
            ADMIN = :admin

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        module Role
          extend Straddle::Internal::Type::Enum

          NONE = :none
          MEMBER = :member
          DEVELOPER = :developer
          ADMIN = :admin

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the user.
        #
        # @see Straddle::Models::UserCreatedV1WebhookEvent::Data#status
        module Status
          extend Straddle::Internal::Type::Enum

          INVITED = :invited
          ACTIVE = :active
          ONBOARDING = :onboarding
          INACTIVE = :inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
