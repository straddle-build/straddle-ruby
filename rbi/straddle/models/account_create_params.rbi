# typed: strong

module Straddle
  module Models
    class AccountCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::AccountCreateParams, Straddle::Internal::AnyHash)
        end

      # The account access level. `standard` provides normal account access, including
      # access to the Straddle dashboard. `managed` means the platform manages the
      # account and account users cannot access the Straddle dashboard.
      sig { returns(Straddle::AccountCreateParams::AccessLevel::OrSymbol) }
      attr_accessor :access_level

      # Account type. The only accepted value is `business`.
      sig { returns(Straddle::AccountCreateParams::AccountType::OrSymbol) }
      attr_accessor :account_type

      sig { returns(Straddle::AccountBusinessProfile) }
      attr_reader :business_profile

      sig do
        params(business_profile: Straddle::AccountBusinessProfile::OrHash).void
      end
      attr_writer :business_profile

      # ID of the organization that will own the account.
      sig { returns(String) }
      attr_accessor :organization_id

      # Your unique ID for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated key for an idempotent request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          access_level: Straddle::AccountCreateParams::AccessLevel::OrSymbol,
          account_type: Straddle::AccountCreateParams::AccountType::OrSymbol,
          business_profile: Straddle::AccountBusinessProfile::OrHash,
          organization_id: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account access level. `standard` provides normal account access, including
        # access to the Straddle dashboard. `managed` means the platform manages the
        # account and account users cannot access the Straddle dashboard.
        access_level:,
        # Account type. The only accepted value is `business`.
        account_type:,
        business_profile:,
        # ID of the organization that will own the account.
        organization_id:,
        # Your unique ID for the account.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_level: Straddle::AccountCreateParams::AccessLevel::OrSymbol,
            account_type: Straddle::AccountCreateParams::AccountType::OrSymbol,
            business_profile: Straddle::AccountBusinessProfile,
            organization_id: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
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
          T.type_alias do
            T.all(Symbol, Straddle::AccountCreateParams::AccessLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STANDARD =
          T.let(
            :standard,
            Straddle::AccountCreateParams::AccessLevel::TaggedSymbol
          )
        MANAGED =
          T.let(
            :managed,
            Straddle::AccountCreateParams::AccessLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountCreateParams::AccessLevel::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Account type. The only accepted value is `business`.
      module AccountType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountCreateParams::AccountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            Straddle::AccountCreateParams::AccountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountCreateParams::AccountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
