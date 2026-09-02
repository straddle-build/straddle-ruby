# typed: strong

module Straddle
  module Models
    class PaykeyBalanceDetails < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PaykeyBalanceDetails, Straddle::Internal::AnyHash)
        end

      sig { returns(Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol) }
      attr_accessor :status

      # Most recently retrieved account balance in cents.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :account_balance

      # Timestamp of the most recent account balance update.
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig do
        params(
          status: Straddle::PaykeyBalanceRefreshStatus::OrSymbol,
          account_balance: T.nilable(Integer),
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        status:,
        # Most recently retrieved account balance in cents.
        account_balance: nil,
        # Timestamp of the most recent account balance update.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            status: Straddle::PaykeyBalanceRefreshStatus::TaggedSymbol,
            account_balance: T.nilable(Integer),
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
