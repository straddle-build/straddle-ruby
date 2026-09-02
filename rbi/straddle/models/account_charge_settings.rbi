# typed: strong

module Straddle
  module Models
    class AccountChargeSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountChargeSettings, Straddle::Internal::AnyHash)
        end

      # Daily charge amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :daily_amount

      # Funding schedule for charges. Straddle sets this value.
      sig do
        returns(Straddle::AccountChargeSettings::FundingTime::TaggedSymbol)
      end
      attr_accessor :funding_time

      # ID of the linked bank account used for charge settlement. Straddle sets this
      # value.
      sig { returns(String) }
      attr_accessor :linked_bank_account_id

      # Maximum amount in cents for one charge.
      sig { returns(Integer) }
      attr_accessor :max_amount

      # Monthly charge amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :monthly_amount

      # Maximum number of charges per calendar month.
      sig { returns(Integer) }
      attr_accessor :monthly_count

      sig do
        params(
          daily_amount: Integer,
          funding_time: Straddle::AccountChargeSettings::FundingTime::OrSymbol,
          linked_bank_account_id: String,
          max_amount: Integer,
          monthly_amount: Integer,
          monthly_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Daily charge amount limit in cents.
        daily_amount:,
        # Funding schedule for charges. Straddle sets this value.
        funding_time:,
        # ID of the linked bank account used for charge settlement. Straddle sets this
        # value.
        linked_bank_account_id:,
        # Maximum amount in cents for one charge.
        max_amount:,
        # Monthly charge amount limit in cents.
        monthly_amount:,
        # Maximum number of charges per calendar month.
        monthly_count:
      )
      end

      sig do
        override.returns(
          {
            daily_amount: Integer,
            funding_time:
              Straddle::AccountChargeSettings::FundingTime::TaggedSymbol,
            linked_bank_account_id: String,
            max_amount: Integer,
            monthly_amount: Integer,
            monthly_count: Integer
          }
        )
      end
      def to_hash
      end

      # Funding schedule for charges. Straddle sets this value.
      module FundingTime
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::AccountChargeSettings::FundingTime)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATE =
          T.let(
            :immediate,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        NEXT_DAY =
          T.let(
            :next_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        ONE_DAY =
          T.let(
            :one_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        TWO_DAY =
          T.let(
            :two_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        THREE_DAY =
          T.let(
            :three_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        FOUR_DAY =
          T.let(
            :four_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )
        FIVE_DAY =
          T.let(
            :five_day,
            Straddle::AccountChargeSettings::FundingTime::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountChargeSettings::FundingTime::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
