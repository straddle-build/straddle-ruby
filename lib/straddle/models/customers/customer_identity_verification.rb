# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class CustomerIdentityVerification < Straddle::Internal::Type::BaseModel
        # @!attribute breakdown
        #   Results for each customer verification check, including decisions, risk scores,
        #   and correlation scores.
        #
        #   @return [Straddle::Models::Customers::CustomerIdentityVerification::Breakdown]
        required :breakdown, -> { Straddle::Customers::CustomerIdentityVerification::Breakdown }

        # @!attribute created_at
        #   Timestamp of when the review was initiated.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision]
        required :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!attribute review_id
        #   Unique identifier for the review.
        #
        #   @return [String]
        required :review_id, String

        # @!attribute updated_at
        #   Timestamp of the most recent update to the review.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute kyc
        #
        #   @return [Straddle::Models::Customers::CustomerKYCVerification, nil]
        optional :kyc, -> { Straddle::Customers::CustomerKYCVerification }

        # @!attribute messages
        #   Messages returned by the customer verification process.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :messages, Straddle::Internal::Type::HashOf[String], nil?: true

        # @!attribute network_alerts
        #
        #   @return [Straddle::Models::Customers::IdentityVerificationAlerts, nil]
        optional :network_alerts, -> { Straddle::Customers::IdentityVerificationAlerts }

        # @!attribute reputation
        #
        #   @return [Straddle::Models::Customers::ReputationCheck, nil]
        optional :reputation, -> { Straddle::Customers::ReputationCheck }

        # @!attribute watch_list
        #
        #   @return [Straddle::Models::Customers::IdentityVerificationWatchlist, nil]
        optional :watch_list, -> { Straddle::Customers::IdentityVerificationWatchlist }

        # @!method initialize(breakdown:, created_at:, decision:, review_id:, updated_at:, kyc: nil, messages: nil, network_alerts: nil, reputation: nil, watch_list: nil)
        #   Some parameter documentations has been truncated, see
        #   {Straddle::Models::Customers::CustomerIdentityVerification} for more details.
        #
        #   @param breakdown [Straddle::Models::Customers::CustomerIdentityVerification::Breakdown] Results for each customer verification check, including decisions, risk scores,
        #
        #   @param created_at [Time] Timestamp of when the review was initiated.
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]
        #
        #   @param review_id [String] Unique identifier for the review.
        #
        #   @param updated_at [Time] Timestamp of the most recent update to the review.
        #
        #   @param kyc [Straddle::Models::Customers::CustomerKYCVerification]
        #
        #   @param messages [Hash{Symbol=>String}, nil] Messages returned by the customer verification process.
        #
        #   @param network_alerts [Straddle::Models::Customers::IdentityVerificationAlerts]
        #
        #   @param reputation [Straddle::Models::Customers::ReputationCheck]
        #
        #   @param watch_list [Straddle::Models::Customers::IdentityVerificationWatchlist]

        # @see Straddle::Models::Customers::CustomerIdentityVerification#breakdown
        class Breakdown < Straddle::Internal::Type::BaseModel
          # @!attribute address
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :address, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute business_evaluation
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :business_evaluation, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute business_identification
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :business_identification, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute business_validation
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :business_validation, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute email
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :email, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute fraud
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :fraud, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute phone
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :phone, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!attribute synthetic
          #
          #   @return [Straddle::Models::Customers::IdentityVerificationBreakdown, nil]
          optional :synthetic, -> { Straddle::Customers::IdentityVerificationBreakdown }

          # @!method initialize(address: nil, business_evaluation: nil, business_identification: nil, business_validation: nil, email: nil, fraud: nil, phone: nil, synthetic: nil)
          #   Results for each customer verification check, including decisions, risk scores,
          #   and correlation scores.
          #
          #   @param address [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param business_evaluation [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param business_identification [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param business_validation [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param email [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param fraud [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param phone [Straddle::Models::Customers::IdentityVerificationBreakdown]
          #   @param synthetic [Straddle::Models::Customers::IdentityVerificationBreakdown]
        end
      end
    end

    CustomerIdentityVerification = Customers::CustomerIdentityVerification
  end
end
