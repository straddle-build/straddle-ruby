# typed: strong

module Straddle
  module Models
    CustomerReview = Customers::CustomerReview

    module Customers
      class CustomerReview < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::CustomerReview,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Customer) }
        attr_reader :customer_details

        sig { params(customer_details: Straddle::Customer::OrHash).void }
        attr_writer :customer_details

        sig do
          returns(T.nilable(Straddle::Customers::CustomerIdentityVerification))
        end
        attr_reader :identity_details

        sig do
          params(
            identity_details:
              Straddle::Customers::CustomerIdentityVerification::OrHash
          ).void
        end
        attr_writer :identity_details

        sig do
          params(
            customer_details: Straddle::Customer::OrHash,
            identity_details:
              Straddle::Customers::CustomerIdentityVerification::OrHash
          ).returns(T.attached_class)
        end
        def self.new(customer_details:, identity_details: nil)
        end

        sig do
          override.returns(
            {
              customer_details: Straddle::Customer,
              identity_details:
                Straddle::Customers::CustomerIdentityVerification
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
