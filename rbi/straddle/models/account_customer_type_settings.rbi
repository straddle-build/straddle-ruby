# typed: strong

module Straddle
  module Models
    class AccountCustomerTypeSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountCustomerTypeSettings,
            Straddle::Internal::AnyHash
          )
        end

      # Status of business-customer support for the account.
      sig do
        returns(Straddle::AccountCustomerTypeSettings::Businesses::TaggedSymbol)
      end
      attr_accessor :businesses

      # Status of individual-customer support for the account.
      sig do
        returns(
          Straddle::AccountCustomerTypeSettings::Individuals::TaggedSymbol
        )
      end
      attr_accessor :individuals

      sig do
        params(
          businesses:
            Straddle::AccountCustomerTypeSettings::Businesses::OrSymbol,
          individuals:
            Straddle::AccountCustomerTypeSettings::Individuals::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of business-customer support for the account.
        businesses:,
        # Status of individual-customer support for the account.
        individuals:
      )
      end

      sig do
        override.returns(
          {
            businesses:
              Straddle::AccountCustomerTypeSettings::Businesses::TaggedSymbol,
            individuals:
              Straddle::AccountCustomerTypeSettings::Individuals::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Status of business-customer support for the account.
      module Businesses
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountCustomerTypeSettings::Businesses)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountCustomerTypeSettings::Businesses::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountCustomerTypeSettings::Businesses::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountCustomerTypeSettings::Businesses::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of individual-customer support for the account.
      module Individuals
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountCustomerTypeSettings::Individuals)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountCustomerTypeSettings::Individuals::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountCustomerTypeSettings::Individuals::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountCustomerTypeSettings::Individuals::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
