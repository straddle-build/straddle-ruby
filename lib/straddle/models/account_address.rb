# frozen_string_literal: true

module Straddle
  module Models
    class AccountAddress < Straddle::Internal::Type::BaseModel
      # @!attribute city
      #   City, district, suburb, town, or village.
      #
      #   @return [String, nil]
      required :city, String, nil?: true

      # @!attribute line1
      #   Primary address line, such as a street address or PO Box.
      #
      #   @return [String, nil]
      required :line1, String, nil?: true

      # @!attribute postal_code
      #   Postal or ZIP code.
      #
      #   @return [String, nil]
      required :postal_code, String, nil?: true

      # @!attribute state
      #   Two-letter state code.
      #
      #   @return [String, nil]
      required :state, String, nil?: true

      # @!attribute country
      #   Two-letter ISO 3166-1 country code. If omitted, Straddle applies US address
      #   validation.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute line2
      #   Secondary address line, such as an apartment, suite, unit, or building.
      #
      #   @return [String, nil]
      optional :line2, String, nil?: true

      # @!method initialize(city:, line1:, postal_code:, state:, country: nil, line2: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountAddress} for more details.
      #
      #   Optional business address. If provided, `line1`, `city`, `state`, and
      #   `postal_code` are required.
      #
      #   @param city [String, nil] City, district, suburb, town, or village.
      #
      #   @param line1 [String, nil] Primary address line, such as a street address or PO Box.
      #
      #   @param postal_code [String, nil] Postal or ZIP code.
      #
      #   @param state [String, nil] Two-letter state code.
      #
      #   @param country [String, nil] Two-letter ISO 3166-1 country code. If omitted, Straddle applies US address vali
      #
      #   @param line2 [String, nil] Secondary address line, such as an apartment, suite, unit, or building.
    end
  end
end
