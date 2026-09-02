# typed: strong

module Straddle
  module Models
    class AccountPaymentTypeSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::AccountPaymentTypeSettings,
            Straddle::Internal::AnyHash
          )
        end

      # Status of charge support for the account.
      sig do
        returns(Straddle::AccountPaymentTypeSettings::Charges::TaggedSymbol)
      end
      attr_accessor :charges

      # Status of payout support for the account.
      sig do
        returns(Straddle::AccountPaymentTypeSettings::Payouts::TaggedSymbol)
      end
      attr_accessor :payouts

      sig do
        params(
          charges: Straddle::AccountPaymentTypeSettings::Charges::OrSymbol,
          payouts: Straddle::AccountPaymentTypeSettings::Payouts::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of charge support for the account.
        charges:,
        # Status of payout support for the account.
        payouts:
      )
      end

      sig do
        override.returns(
          {
            charges:
              Straddle::AccountPaymentTypeSettings::Charges::TaggedSymbol,
            payouts: Straddle::AccountPaymentTypeSettings::Payouts::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Status of charge support for the account.
      module Charges
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountPaymentTypeSettings::Charges)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountPaymentTypeSettings::Charges::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountPaymentTypeSettings::Charges::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountPaymentTypeSettings::Charges::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of payout support for the account.
      module Payouts
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountPaymentTypeSettings::Payouts)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::AccountPaymentTypeSettings::Payouts::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::AccountPaymentTypeSettings::Payouts::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::AccountPaymentTypeSettings::Payouts::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
