# typed: strong

module Straddle
  module Models
    class AccountConsentSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountConsentSettings, Straddle::Internal::AnyHash)
        end

      # Status of internet authorization support for the account.
      sig { returns(Straddle::AccountConsentSettings::Internet::TaggedSymbol) }
      attr_accessor :internet

      # Status of signed-agreement authorization support for the account.
      sig do
        returns(Straddle::AccountConsentSettings::SignedAgreement::TaggedSymbol)
      end
      attr_accessor :signed_agreement

      sig do
        params(
          internet: Straddle::AccountConsentSettings::Internet::OrSymbol,
          signed_agreement:
            Straddle::AccountConsentSettings::SignedAgreement::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of internet authorization support for the account.
        internet:,
        # Status of signed-agreement authorization support for the account.
        signed_agreement:
      )
      end

      sig do
        override.returns(
          {
            internet: Straddle::AccountConsentSettings::Internet::TaggedSymbol,
            signed_agreement:
              Straddle::AccountConsentSettings::SignedAgreement::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Status of internet authorization support for the account.
      module Internet
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountConsentSettings::Internet)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountConsentSettings::Internet::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountConsentSettings::Internet::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountConsentSettings::Internet::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of signed-agreement authorization support for the account.
      module SignedAgreement
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountConsentSettings::SignedAgreement)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountConsentSettings::SignedAgreement::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountConsentSettings::SignedAgreement::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountConsentSettings::SignedAgreement::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
