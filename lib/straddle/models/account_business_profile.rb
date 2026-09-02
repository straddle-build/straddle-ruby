# frozen_string_literal: true

module Straddle
  module Models
    class AccountBusinessProfile < Straddle::Internal::Type::BaseModel
      # @!attribute name
      #   The operating or trade name of the business.
      #
      #   @return [String]
      required :name, String

      # @!attribute website
      #   URL of the business's primary website.
      #
      #   @return [String]
      required :website, String

      # @!attribute address
      #   Optional business address. If provided, `line1`, `city`, `state`, and
      #   `postal_code` are required.
      #
      #   @return [Straddle::Models::AccountAddress, nil]
      optional :address, -> { Straddle::AccountAddress }, nil?: true

      # @!attribute description
      #   Description of the business and its products or services.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute industry
      #
      #   @return [Straddle::Models::AccountIndustry, nil]
      optional :industry, -> { Straddle::AccountIndustry }

      # @!attribute legal_name
      #   The official registered name of the business.
      #
      #   @return [String, nil]
      optional :legal_name, String, nil?: true

      # @!attribute phone
      #   Primary business phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute support_channels
      #
      #   @return [Straddle::Models::AccountSupportChannels, nil]
      optional :support_channels, -> { Straddle::AccountSupportChannels }

      # @!attribute tax_id
      #   Business tax identification number, such as a US Employer Identification Number
      #   (EIN).
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!attribute use_case
      #   How the business plans to use Straddle.
      #
      #   @return [String, nil]
      optional :use_case, String, nil?: true

      # @!method initialize(name:, website:, address: nil, description: nil, industry: nil, legal_name: nil, phone: nil, support_channels: nil, tax_id: nil, use_case: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::AccountBusinessProfile} for more details.
      #
      #   @param name [String] The operating or trade name of the business.
      #
      #   @param website [String] URL of the business's primary website.
      #
      #   @param address [Straddle::Models::AccountAddress, nil] Optional business address. If provided, `line1`, `city`, `state`, and `postal_co
      #
      #   @param description [String, nil] Description of the business and its products or services.
      #
      #   @param industry [Straddle::Models::AccountIndustry]
      #
      #   @param legal_name [String, nil] The official registered name of the business.
      #
      #   @param phone [String, nil] Primary business phone number in E.164 format.
      #
      #   @param support_channels [Straddle::Models::AccountSupportChannels]
      #
      #   @param tax_id [String, nil] Business tax identification number, such as a US Employer Identification Number
      #
      #   @param use_case [String, nil] How the business plans to use Straddle.
    end
  end
end
