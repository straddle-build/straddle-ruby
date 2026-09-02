# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class IdentityVerificationAlerts < Straddle::Internal::Type::BaseModel
        # @!attribute alerts
        #   Any alerts or flags raised during the consortium alert screening.
        #
        #   @return [Array<String>, nil]
        optional :alerts, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute codes
        #   List of specific result codes from the consortium alert screening.
        #
        #   @return [Array<String>, nil]
        optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision, nil]
        optional :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!method initialize(alerts: nil, codes: nil, decision: nil)
        #   @param alerts [Array<String>, nil] Any alerts or flags raised during the consortium alert screening.
        #
        #   @param codes [Array<String>, nil] List of specific result codes from the consortium alert screening.
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]
      end
    end
  end
end
