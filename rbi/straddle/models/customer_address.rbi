# typed: strong

module Straddle
  module Models
    class CustomerAddress < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::CustomerAddress, Straddle::Internal::AnyHash)
        end

      # Primary address line, such as a street address or PO Box.
      sig { returns(String) }
      attr_accessor :address1

      # City, district, suburb, town, or village.
      sig { returns(String) }
      attr_accessor :city

      # Two-letter state code.
      sig { returns(String) }
      attr_accessor :state

      # ZIP or postal code.
      sig { returns(String) }
      attr_accessor :zip

      # Secondary address line, such as an apartment, suite, unit, or building.
      sig { returns(T.nilable(String)) }
      attr_accessor :address2

      # Customer postal address. When provided, the object must include all required
      # fields.
      sig do
        params(
          address1: String,
          city: String,
          state: String,
          zip: String,
          address2: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Primary address line, such as a street address or PO Box.
        address1:,
        # City, district, suburb, town, or village.
        city:,
        # Two-letter state code.
        state:,
        # ZIP or postal code.
        zip:,
        # Secondary address line, such as an apartment, suite, unit, or building.
        address2: nil
      )
      end

      sig do
        override.returns(
          {
            address1: String,
            city: String,
            state: String,
            zip: String,
            address2: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
