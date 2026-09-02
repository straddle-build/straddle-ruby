# typed: strong

module Straddle
  module Models
    class AccountStatementSettings < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountStatementSettings, Straddle::Internal::AnyHash)
        end

      # Company identifier used in ACH records.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Company name used in statement records.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_name

      # Default descriptor for account payments.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_descriptor

      sig do
        params(
          company_id: T.nilable(String),
          company_name: T.nilable(String),
          default_descriptor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Company identifier used in ACH records.
        company_id: nil,
        # Company name used in statement records.
        company_name: nil,
        # Default descriptor for account payments.
        default_descriptor: nil
      )
      end

      sig do
        override.returns(
          {
            company_id: T.nilable(String),
            company_name: T.nilable(String),
            default_descriptor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
