# typed: strong

module Straddle
  module Models
    class AccountPayoutSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountPayoutSettings, Straddle::Internal::AnyHash)
        end

      # Daily payout amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :daily_amount

      # Funding schedule for payouts. Straddle sets this value.
      sig do
        returns(Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol)
      end
      attr_accessor :funding_time

      # ID of the linked bank account used for payout settlement.
      sig { returns(String) }
      attr_accessor :linked_bank_account_id

      # Maximum amount in cents for one payout.
      sig { returns(Integer) }
      attr_accessor :max_amount

      # Monthly payout amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :monthly_amount

      # Maximum number of payouts per calendar month.
      sig { returns(Integer) }
      attr_accessor :monthly_count

      sig do
        params(
          daily_amount: Integer,
          funding_time: Straddle::AccountPayoutSettings::FundingTime::OrSymbol,
          linked_bank_account_id: String,
          max_amount: Integer,
          monthly_amount: Integer,
          monthly_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Daily payout amount limit in cents.
        daily_amount:,
        # Funding schedule for payouts. Straddle sets this value.
        funding_time:,
        # ID of the linked bank account used for payout settlement.
        linked_bank_account_id:,
        # Maximum amount in cents for one payout.
        max_amount:,
        # Monthly payout amount limit in cents.
        monthly_amount:,
        # Maximum number of payouts per calendar month.
        monthly_count:
      )
      end

      sig do
        override.returns(
          {
            daily_amount: Integer,
            funding_time:
              Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol,
            linked_bank_account_id: String,
            max_amount: Integer,
            monthly_amount: Integer,
            monthly_count: Integer
          }
        )
      end
      def to_hash
      end

      # Funding schedule for payouts. Straddle sets this value.
      module FundingTime
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountPayoutSettings::FundingTime)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATE =
          T.let(
            :immediate,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        NEXT_DAY =
          T.let(
            :next_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        ONE_DAY =
          T.let(
            :one_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        TWO_DAY =
          T.let(
            :two_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        THREE_DAY =
          T.let(
            :three_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        FOUR_DAY =
          T.let(
            :four_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )
        FIVE_DAY =
          T.let(
            :five_day,
            Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountPayoutSettings::FundingTime::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
