# frozen_string_literal: true

module Straddle
  module Models
    class TermsOfService < Straddle::Internal::Type::BaseModel
      # @!attribute accepted_date
      #   Date and time when the account accepted the Terms of Service.
      #
      #   @return [Time]
      required :accepted_date, Time

      # @!attribute agreement_type
      #   Agreement type. Use `embedded` unless Straddle has enabled the platform for
      #   `direct` agreements.
      #
      #   @return [Symbol, Straddle::Models::TermsOfService::AgreementType]
      required :agreement_type, enum: -> { Straddle::TermsOfService::AgreementType }

      # @!attribute agreement_url
      #   URL of the accepted agreement.
      #
      #   @return [String, nil]
      required :agreement_url, String, nil?: true

      # @!attribute accepted_ip
      #   IP address used to accept the Terms of Service.
      #
      #   @return [String, nil]
      optional :accepted_ip, String, nil?: true

      # @!attribute accepted_user_agent
      #   User agent of the browser or application that accepted the Terms of Service.
      #
      #   @return [String, nil]
      optional :accepted_user_agent, String, nil?: true

      # @!method initialize(accepted_date:, agreement_type:, agreement_url:, accepted_ip: nil, accepted_user_agent: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::TermsOfService} for more details.
      #
      #   @param accepted_date [Time] Date and time when the account accepted the Terms of Service.
      #
      #   @param agreement_type [Symbol, Straddle::Models::TermsOfService::AgreementType] Agreement type. Use `embedded` unless Straddle has enabled the platform for `dir
      #
      #   @param agreement_url [String, nil] URL of the accepted agreement.
      #
      #   @param accepted_ip [String, nil] IP address used to accept the Terms of Service.
      #
      #   @param accepted_user_agent [String, nil] User agent of the browser or application that accepted the Terms of Service.

      # Agreement type. Use `embedded` unless Straddle has enabled the platform for
      # `direct` agreements.
      #
      # @see Straddle::Models::TermsOfService#agreement_type
      module AgreementType
        extend Straddle::Internal::Type::Enum

        EMBEDDED = :embedded
        DIRECT = :direct

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
