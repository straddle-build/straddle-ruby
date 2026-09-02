# typed: strong

module Straddle
  module Models
    class ChargeSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::ChargeSettings, Straddle::Internal::AnyHash)
        end

      # Daily charge amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :daily_amount

      # Maximum amount in cents for one charge.
      sig { returns(Integer) }
      attr_accessor :max_amount

      # Monthly charge amount limit in cents.
      sig { returns(Integer) }
      attr_accessor :monthly_amount

      # Maximum number of charges per calendar month.
      sig { returns(Integer) }
      attr_accessor :monthly_count

      # Funding schedule applied to charges.
      sig { returns(T.nilable(String)) }
      attr_accessor :funding_time

      # ID of the linked bank account used for charge settlement.
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
        # Daily charge amount limit in cents.
        daily_amount:,
        # Maximum amount in cents for one charge.
        max_amount:,
        # Monthly charge amount limit in cents.
        monthly_amount:,
        # Maximum number of charges per calendar month.
        monthly_count:,
        # Funding schedule applied to charges.
        funding_time: nil,
        # ID of the linked bank account used for charge settlement.
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
