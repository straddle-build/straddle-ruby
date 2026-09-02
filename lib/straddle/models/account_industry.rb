# frozen_string_literal: true

module Straddle
  module Models
    class AccountIndustry < Straddle::Internal::Type::BaseModel
      # @!attribute category
      #   Industry category. Required when `mcc` is omitted.
      #
      #   @return [String, nil]
      optional :category, String, nil?: true

      # @!attribute mcc
      #   Merchant category code (MCC) that best describes the business. If omitted,
      #   provide both `sector` and `category`.
      #
      #   @return [String, nil]
      optional :mcc, String, nil?: true

      # @!attribute sector
      #   Business sector. Required when `mcc` is omitted.
      #
      #   @return [String, nil]
      optional :sector, String, nil?: true

      # @!method initialize(category: nil, mcc: nil, sector: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountIndustry} for more details.
      #
      #   @param category [String, nil] Industry category. Required when `mcc` is omitted.
      #
      #   @param mcc [String, nil] Merchant category code (MCC) that best describes the business. If omitted, provi
      #
      #   @param sector [String, nil] Business sector. Required when `mcc` is omitted.
    end
  end
end
