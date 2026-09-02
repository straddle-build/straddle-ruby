# frozen_string_literal: true

module Straddle
  module Models
    class AccountSupportChannels < Straddle::Internal::Type::BaseModel
      # @!attribute email
      #   Email address for customer support.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute phone
      #   Customer support phone number in E.164 format.
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute url
      #   URL of the business's customer support page or contact form.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(email: nil, phone: nil, url: nil)
      #   @param email [String, nil] Email address for customer support.
      #
      #   @param phone [String, nil] Customer support phone number in E.164 format.
      #
      #   @param url [String, nil] URL of the business's customer support page or contact form.
    end
  end
end
