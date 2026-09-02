# typed: strong

module Straddle
  module Models
    class BusinessCustomerRepresentative < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::BusinessCustomerRepresentative,
            Straddle::Internal::AnyHash
          )
        end

      # Full name of the representative.
      sig { returns(String) }
      attr_accessor :name

      # Email address of the representative.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Phone number of the representative.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      sig do
        params(
          name: String,
          email: T.nilable(String),
          phone: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Full name of the representative.
        name:,
        # Email address of the representative.
        email: nil,
        # Phone number of the representative.
        phone: nil
      )
      end

      sig do
        override.returns(
          { name: String, email: T.nilable(String), phone: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
