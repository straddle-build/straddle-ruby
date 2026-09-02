# typed: strong

module Straddle
  module Models
    class AccountAddress < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountAddress, Straddle::Internal::AnyHash)
        end

      # City, district, suburb, town, or village.
      sig { returns(T.nilable(String)) }
      attr_accessor :city

      # Primary address line, such as a street address or PO Box.
      sig { returns(T.nilable(String)) }
      attr_accessor :line1

      # Postal or ZIP code.
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # Two-letter state code.
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      # Two-letter ISO 3166-1 country code. If omitted, Straddle applies US address
      # validation.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # Secondary address line, such as an apartment, suite, unit, or building.
      sig { returns(T.nilable(String)) }
      attr_accessor :line2

      # Optional business address. If provided, `line1`, `city`, `state`, and
      # `postal_code` are required.
      sig do
        params(
          city: T.nilable(String),
          line1: T.nilable(String),
          postal_code: T.nilable(String),
          state: T.nilable(String),
          country: T.nilable(String),
          line2: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # City, district, suburb, town, or village.
        city:,
        # Primary address line, such as a street address or PO Box.
        line1:,
        # Postal or ZIP code.
        postal_code:,
        # Two-letter state code.
        state:,
        # Two-letter ISO 3166-1 country code. If omitted, Straddle applies US address
        # validation.
        country: nil,
        # Secondary address line, such as an apartment, suite, unit, or building.
        line2: nil
      )
      end

      sig do
        override.returns(
          {
            city: T.nilable(String),
            line1: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String),
            country: T.nilable(String),
            line2: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
