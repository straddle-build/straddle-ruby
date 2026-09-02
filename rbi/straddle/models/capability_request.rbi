# typed: strong

module Straddle
  module Models
    class CapabilityRequest < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CapabilityRequest, Straddle::Internal::AnyHash)
        end

      # Straddle's unique ID for the capability request.
      sig { returns(String) }
      attr_accessor :id

      # ID of the account associated with the capability request.
      sig { returns(String) }
      attr_accessor :account_id

      # Groups the requested capability. `payment_type` covers `charges` and `payouts`.
      # `customer_type` covers `individuals` and `businesses`. `consent_type` covers
      # `signed_agreement` and `internet` authorization.
      sig { returns(Straddle::CapabilityRequest::Category::TaggedSymbol) }
      attr_accessor :category

      # Date and time when Straddle created the capability request.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether the request enables or disables the capability.
      sig { returns(T::Boolean) }
      attr_accessor :enable

      # Status of the capability request.
      sig { returns(Straddle::CapabilityRequest::Status::TaggedSymbol) }
      attr_accessor :status

      # Capability type requested within the category.
      sig { returns(Straddle::CapabilityRequest::Type::TaggedSymbol) }
      attr_accessor :type

      # Date and time of the most recent capability request update.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Limits and other settings requested for the capability.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :settings

      sig do
        params(
          id: String,
          account_id: String,
          category: Straddle::CapabilityRequest::Category::OrSymbol,
          created_at: Time,
          enable: T::Boolean,
          status: Straddle::CapabilityRequest::Status::OrSymbol,
          type: Straddle::CapabilityRequest::Type::OrSymbol,
          updated_at: Time,
          settings: T.nilable(T::Hash[Symbol, T.anything])
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the capability request.
        id:,
        # ID of the account associated with the capability request.
        account_id:,
        # Groups the requested capability. `payment_type` covers `charges` and `payouts`.
        # `customer_type` covers `individuals` and `businesses`. `consent_type` covers
        # `signed_agreement` and `internet` authorization.
        category:,
        # Date and time when Straddle created the capability request.
        created_at:,
        # Whether the request enables or disables the capability.
        enable:,
        # Status of the capability request.
        status:,
        # Capability type requested within the category.
        type:,
        # Date and time of the most recent capability request update.
        updated_at:,
        # Limits and other settings requested for the capability.
        settings: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            category: Straddle::CapabilityRequest::Category::TaggedSymbol,
            created_at: Time,
            enable: T::Boolean,
            status: Straddle::CapabilityRequest::Status::TaggedSymbol,
            type: Straddle::CapabilityRequest::Type::TaggedSymbol,
            updated_at: Time,
            settings: T.nilable(T::Hash[Symbol, T.anything])
          }
        )
      end
      def to_hash
      end

      # Groups the requested capability. `payment_type` covers `charges` and `payouts`.
      # `customer_type` covers `individuals` and `businesses`. `consent_type` covers
      # `signed_agreement` and `internet` authorization.
      module Category
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CapabilityRequest::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_TYPE =
          T.let(
            :payment_type,
            Straddle::CapabilityRequest::Category::TaggedSymbol
          )
        CUSTOMER_TYPE =
          T.let(
            :customer_type,
            Straddle::CapabilityRequest::Category::TaggedSymbol
          )
        CONSENT_TYPE =
          T.let(
            :consent_type,
            Straddle::CapabilityRequest::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::CapabilityRequest::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of the capability request.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CapabilityRequest::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Straddle::CapabilityRequest::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::CapabilityRequest::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, Straddle::CapabilityRequest::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::CapabilityRequest::Status::TaggedSymbol)
        APPROVED =
          T.let(:approved, Straddle::CapabilityRequest::Status::TaggedSymbol)
        REVIEWING =
          T.let(:reviewing, Straddle::CapabilityRequest::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CapabilityRequest::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Capability type requested within the category.
      module Type
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::CapabilityRequest::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(:charges, Straddle::CapabilityRequest::Type::TaggedSymbol)
        PAYOUTS =
          T.let(:payouts, Straddle::CapabilityRequest::Type::TaggedSymbol)
        INDIVIDUALS =
          T.let(:individuals, Straddle::CapabilityRequest::Type::TaggedSymbol)
        BUSINESSES =
          T.let(:businesses, Straddle::CapabilityRequest::Type::TaggedSymbol)
        SIGNED_AGREEMENT =
          T.let(
            :signed_agreement,
            Straddle::CapabilityRequest::Type::TaggedSymbol
          )
        INTERNET =
          T.let(:internet, Straddle::CapabilityRequest::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::CapabilityRequest::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
