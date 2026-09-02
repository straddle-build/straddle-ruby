# typed: strong

module Straddle
  module Models
    module Customers
      class IdentityVerificationAlerts < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::IdentityVerificationAlerts,
              Straddle::Internal::AnyHash
            )
          end

        # Any alerts or flags raised during the consortium alert screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :alerts

        # List of specific result codes from the consortium alert screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

        sig do
          returns(
            T.nilable(Straddle::Customers::VerificationDecision::TaggedSymbol)
          )
        end
        attr_reader :decision

        sig do
          params(
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).void
        end
        attr_writer :decision

        sig do
          params(
            alerts: T.nilable(T::Array[String]),
            codes: T.nilable(T::Array[String]),
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Any alerts or flags raised during the consortium alert screening.
          alerts: nil,
          # List of specific result codes from the consortium alert screening.
          codes: nil,
          decision: nil
        )
        end

        sig do
          override.returns(
            {
              alerts: T.nilable(T::Array[String]),
              codes: T.nilable(T::Array[String]),
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
