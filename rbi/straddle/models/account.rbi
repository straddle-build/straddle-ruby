# typed: strong

module Straddle
  module Models
    class Account < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Straddle::Account, Straddle::Internal::AnyHash) }

      # Straddle's unique ID for the account.
      sig { returns(String) }
      attr_accessor :id

      # The account access level. `standard` provides normal account access, including
      # access to the Straddle dashboard. `managed` means the platform manages the
      # account and account users cannot access the Straddle dashboard.
      sig { returns(Straddle::Account::AccessLevel::TaggedSymbol) }
      attr_accessor :access_level

      # ID of the organization that owns the account.
      sig { returns(String) }
      attr_accessor :organization_id

      # The current lifecycle status of the account.
      sig { returns(Straddle::Account::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Straddle::AccountStatusDetail) }
      attr_reader :status_detail

      sig { params(status_detail: Straddle::AccountStatusDetail::OrHash).void }
      attr_writer :status_detail

      # The account type. Only `business` is supported.
      sig { returns(Straddle::Account::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(Straddle::AccountBusinessProfile)) }
      attr_reader :business_profile

      sig do
        params(business_profile: Straddle::AccountBusinessProfile::OrHash).void
      end
      attr_writer :business_profile

      sig { returns(T.nilable(Straddle::AccountCapabilities)) }
      attr_reader :capabilities

      sig { params(capabilities: Straddle::AccountCapabilities::OrHash).void }
      attr_writer :capabilities

      # Date and time when Straddle created the account.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Your unique ID for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Straddle::AccountPaymentSettings)) }
      attr_reader :settings

      sig { params(settings: Straddle::AccountPaymentSettings::OrHash).void }
      attr_writer :settings

      sig { returns(T.nilable(Straddle::TermsOfService)) }
      attr_reader :terms_of_service

      sig { params(terms_of_service: Straddle::TermsOfService::OrHash).void }
      attr_writer :terms_of_service

      # Date and time of the most recent account update.
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          access_level: Straddle::Account::AccessLevel::OrSymbol,
          organization_id: String,
          status: Straddle::Account::Status::OrSymbol,
          status_detail: Straddle::AccountStatusDetail::OrHash,
          type: Straddle::Account::Type::OrSymbol,
          business_profile: Straddle::AccountBusinessProfile::OrHash,
          capabilities: Straddle::AccountCapabilities::OrHash,
          created_at: T.nilable(Time),
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          settings: Straddle::AccountPaymentSettings::OrHash,
          terms_of_service: Straddle::TermsOfService::OrHash,
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the account.
        id:,
        # The account access level. `standard` provides normal account access, including
        # access to the Straddle dashboard. `managed` means the platform manages the
        # account and account users cannot access the Straddle dashboard.
        access_level:,
        # ID of the organization that owns the account.
        organization_id:,
        # The current lifecycle status of the account.
        status:,
        status_detail:,
        # The account type. Only `business` is supported.
        type:,
        business_profile: nil,
        capabilities: nil,
        # Date and time when Straddle created the account.
        created_at: nil,
        # Your unique ID for the account.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        settings: nil,
        terms_of_service: nil,
        # Date and time of the most recent account update.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            access_level: Straddle::Account::AccessLevel::TaggedSymbol,
            organization_id: String,
            status: Straddle::Account::Status::TaggedSymbol,
            status_detail: Straddle::AccountStatusDetail,
            type: Straddle::Account::Type::TaggedSymbol,
            business_profile: Straddle::AccountBusinessProfile,
            capabilities: Straddle::AccountCapabilities,
            created_at: T.nilable(Time),
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            settings: Straddle::AccountPaymentSettings,
            terms_of_service: Straddle::TermsOfService,
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # The account access level. `standard` provides normal account access, including
      # access to the Straddle dashboard. `managed` means the platform manages the
      # account and account users cannot access the Straddle dashboard.
      module AccessLevel
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::Account::AccessLevel) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STANDARD =
          T.let(:standard, Straddle::Account::AccessLevel::TaggedSymbol)
        MANAGED = T.let(:managed, Straddle::Account::AccessLevel::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::Account::AccessLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The current lifecycle status of the account.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::Account::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED = T.let(:created, Straddle::Account::Status::TaggedSymbol)
        ONBOARDING = T.let(:onboarding, Straddle::Account::Status::TaggedSymbol)
        ACTIVE = T.let(:active, Straddle::Account::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, Straddle::Account::Status::TaggedSymbol)
        INACTIVE = T.let(:inactive, Straddle::Account::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Straddle::Account::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The account type. Only `business` is supported.
      module Type
        extend Straddle::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Straddle::Account::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS = T.let(:business, Straddle::Account::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Straddle::Account::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
