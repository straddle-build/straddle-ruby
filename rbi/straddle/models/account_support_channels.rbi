# typed: strong

module Straddle
  module Models
    class AccountSupportChannels < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountSupportChannels, Straddle::Internal::AnyHash)
        end

      # Email address for customer support.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Customer support phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # URL of the business's customer support page or contact form.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          email: T.nilable(String),
          phone: T.nilable(String),
          url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address for customer support.
        email: nil,
        # Customer support phone number in E.164 format.
        phone: nil,
        # URL of the business's customer support page or contact form.
        url: nil
      )
      end

      sig do
        override.returns(
          {
            email: T.nilable(String),
            phone: T.nilable(String),
            url: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
