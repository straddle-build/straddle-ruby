# frozen_string_literal: true

module Straddle
  module Models
    class CustomerAddress < Straddle::Internal::Type::BaseModel
      # @!attribute address1
      #   Primary address line, such as a street address or PO Box.
      #
      #   @return [String]
      required :address1, String

      # @!attribute city
      #   City, district, suburb, town, or village.
      #
      #   @return [String]
      required :city, String

      # @!attribute state
      #   Two-letter state code.
      #
      #   @return [String]
      required :state, String

      # @!attribute zip
      #   ZIP or postal code.
      #
      #   @return [String]
      required :zip, String

      # @!attribute address2
      #   Secondary address line, such as an apartment, suite, unit, or building.
      #
      #   @return [String, nil]
      optional :address2, String, nil?: true

      # @!method initialize(address1:, city:, state:, zip:, address2: nil)
      #   Customer postal address. When provided, the object must include all required
      #   fields.
      #
      #   @param address1 [String] Primary address line, such as a street address or PO Box.
      #
      #   @param city [String] City, district, suburb, town, or village.
      #
      #   @param state [String] Two-letter state code.
      #
      #   @param zip [String] ZIP or postal code.
      #
      #   @param address2 [String, nil] Secondary address line, such as an apartment, suite, unit, or building.
    end
  end
end
