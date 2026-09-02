# typed: strong

module Straddle
  module Models
    class AccountIndustry < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountIndustry, Straddle::Internal::AnyHash)
        end

      # Industry category. Required when `mcc` is omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :category

      # Merchant category code (MCC) that best describes the business. If omitted,
      # provide both `sector` and `category`.
      sig { returns(T.nilable(String)) }
      attr_accessor :mcc

      # Business sector. Required when `mcc` is omitted.
      sig { returns(T.nilable(String)) }
      attr_accessor :sector

      sig do
        params(
          category: T.nilable(String),
          mcc: T.nilable(String),
          sector: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Industry category. Required when `mcc` is omitted.
        category: nil,
        # Merchant category code (MCC) that best describes the business. If omitted,
        # provide both `sector` and `category`.
        mcc: nil,
        # Business sector. Required when `mcc` is omitted.
        sector: nil
      )
      end

      sig do
        override.returns(
          {
            category: T.nilable(String),
            mcc: T.nilable(String),
            sector: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
