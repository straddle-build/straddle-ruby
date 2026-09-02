# typed: strong

module Straddle
  module Models
    class PayoutSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::PayoutSettings, Straddle::Internal::AnyHash)
        end

      # Daily payout amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :daily_amount

      # Maximum amount in cents for one payout.
      sig { returns(Integer) }
      attr_accessor :max_amount

      # Monthly payout amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :monthly_amount

      # Maximum number of payouts per calendar month.
      sig { returns(Integer) }
      attr_accessor :monthly_count

      # Funding schedule applied to payouts.
      sig { returns(T.nilable(String)) }
      attr_accessor :funding_time

      # ID of the linked bank account used for payout settlement.
      sig { returns(T.nilable(String)) }
      attr_accessor :linked_bank_account_id

      sig do
        params(
          daily_amount: Integer,
          max_amount: Integer,
          monthly_amount: Integer,
          monthly_count: Integer,
          funding_time: T.nilable(String),
          linked_bank_account_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Daily payout amount limit in cents.
        daily_amount:,
        # Maximum amount in cents for one payout.
        max_amount:,
        # Monthly payout amount limit in cents.
        monthly_amount:,
        # Maximum number of payouts per calendar month.
        monthly_count:,
        # Funding schedule applied to payouts.
        funding_time: nil,
        # ID of the linked bank account used for payout settlement.
        linked_bank_account_id: nil
      )
      end

      sig do
        override.returns(
          {
            daily_amount: Integer,
            max_amount: Integer,
            monthly_amount: Integer,
            monthly_count: Integer,
            funding_time: T.nilable(String),
            linked_bank_account_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
