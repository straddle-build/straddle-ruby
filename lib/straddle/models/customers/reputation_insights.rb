# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class ReputationInsights < Straddle::Internal::Type::BaseModel
        # @!attribute accounts_active_count
        #   Number of active accounts associated with the identity.
        #
        #   @return [Integer, nil]
        optional :accounts_active_count, Integer, nil?: true

        # @!attribute accounts_closed_count
        #   Number of closed accounts associated with the identity.
        #
        #   @return [Integer, nil]
        optional :accounts_closed_count, Integer, nil?: true

        # @!attribute accounts_closed_dates
        #   Dates when accounts associated with the identity were closed.
        #
        #   @return [Array<Date>, nil]
        optional :accounts_closed_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute accounts_count
        #   Number of accounts associated with the identity.
        #
        #   @return [Integer, nil]
        optional :accounts_count, Integer, nil?: true

        # @!attribute accounts_fraud_count
        #   Number of accounts associated with fraud.
        #
        #   @return [Integer, nil]
        optional :accounts_fraud_count, Integer, nil?: true

        # @!attribute accounts_fraud_labeled_dates
        #   Dates when accounts were labeled as fraudulent.
        #
        #   @return [Array<Date>, nil]
        optional :accounts_fraud_labeled_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute accounts_fraud_loss_total_amount
        #   Total fraud loss associated with the accounts.
        #
        #   @return [Float, nil]
        optional :accounts_fraud_loss_total_amount, Float, nil?: true

        # @!attribute ach_fraud_transactions_count
        #   Number of fraudulent ACH transactions.
        #
        #   @return [Integer, nil]
        optional :ach_fraud_transactions_count, Integer, nil?: true

        # @!attribute ach_fraud_transactions_dates
        #   Dates when fraudulent ACH transactions occurred.
        #
        #   @return [Array<Date>, nil]
        optional :ach_fraud_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute ach_fraud_transactions_total_amount
        #   Total amount of fraudulent ACH transactions.
        #
        #   @return [Float, nil]
        optional :ach_fraud_transactions_total_amount, Float, nil?: true

        # @!attribute ach_returned_transactions_count
        #   Number of returned ACH transactions.
        #
        #   @return [Integer, nil]
        optional :ach_returned_transactions_count, Integer, nil?: true

        # @!attribute ach_returned_transactions_dates
        #   Dates when ACH transactions were returned.
        #
        #   @return [Array<Date>, nil]
        optional :ach_returned_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute ach_returned_transactions_total_amount
        #   Total amount of returned ACH transactions.
        #
        #   @return [Float, nil]
        optional :ach_returned_transactions_total_amount, Float, nil?: true

        # @!attribute applications_approved_count
        #   Number of approved applications associated with the identity.
        #
        #   @return [Integer, nil]
        optional :applications_approved_count, Integer, nil?: true

        # @!attribute applications_count
        #   Number of applications associated with the identity.
        #
        #   @return [Integer, nil]
        optional :applications_count, Integer, nil?: true

        # @!attribute applications_dates
        #   Dates when applications associated with the identity were submitted.
        #
        #   @return [Array<Date>, nil]
        optional :applications_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute applications_declined_count
        #   Number of declined applications associated with the identity.
        #
        #   @return [Integer, nil]
        optional :applications_declined_count, Integer, nil?: true

        # @!attribute applications_fraud_count
        #   Number of applications associated with fraud.
        #
        #   @return [Integer, nil]
        optional :applications_fraud_count, Integer, nil?: true

        # @!attribute card_disputed_transactions_count
        #   Number of disputed card transactions.
        #
        #   @return [Integer, nil]
        optional :card_disputed_transactions_count, Integer, nil?: true

        # @!attribute card_disputed_transactions_dates
        #   Dates when card transactions were disputed.
        #
        #   @return [Array<Date>, nil]
        optional :card_disputed_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute card_disputed_transactions_total_amount
        #   Total amount of disputed card transactions.
        #
        #   @return [Float, nil]
        optional :card_disputed_transactions_total_amount, Float, nil?: true

        # @!attribute card_fraud_transactions_count
        #   Number of fraudulent card transactions.
        #
        #   @return [Integer, nil]
        optional :card_fraud_transactions_count, Integer, nil?: true

        # @!attribute card_fraud_transactions_dates
        #   Dates when fraudulent card transactions occurred.
        #
        #   @return [Array<Date>, nil]
        optional :card_fraud_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute card_fraud_transactions_total_amount
        #   Total amount of fraudulent card transactions.
        #
        #   @return [Float, nil]
        optional :card_fraud_transactions_total_amount, Float, nil?: true

        # @!attribute card_stopped_transactions_count
        #   Number of stopped card transactions.
        #
        #   @return [Integer, nil]
        optional :card_stopped_transactions_count, Integer, nil?: true

        # @!attribute card_stopped_transactions_dates
        #   Dates when card transactions were stopped.
        #
        #   @return [Array<Date>, nil]
        optional :card_stopped_transactions_dates, Straddle::Internal::Type::ArrayOf[Date], nil?: true

        # @!attribute user_active_profile_count
        #   Number of active profiles associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_active_profile_count, Integer, nil?: true

        # @!attribute user_address_count
        #   Number of addresses associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_address_count, Integer, nil?: true

        # @!attribute user_closed_profile_count
        #   Number of closed profiles associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_closed_profile_count, Integer, nil?: true

        # @!attribute user_dob_count
        #   Number of dates of birth associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_dob_count, Integer, nil?: true

        # @!attribute user_email_count
        #   Number of email addresses associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_email_count, Integer, nil?: true

        # @!attribute user_institution_count
        #   Number of financial institutions associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_institution_count, Integer, nil?: true

        # @!attribute user_mobile_count
        #   Number of mobile numbers associated with the identity.
        #
        #   @return [Integer, nil]
        optional :user_mobile_count, Integer, nil?: true

        # @!method initialize(accounts_active_count: nil, accounts_closed_count: nil, accounts_closed_dates: nil, accounts_count: nil, accounts_fraud_count: nil, accounts_fraud_labeled_dates: nil, accounts_fraud_loss_total_amount: nil, ach_fraud_transactions_count: nil, ach_fraud_transactions_dates: nil, ach_fraud_transactions_total_amount: nil, ach_returned_transactions_count: nil, ach_returned_transactions_dates: nil, ach_returned_transactions_total_amount: nil, applications_approved_count: nil, applications_count: nil, applications_dates: nil, applications_declined_count: nil, applications_fraud_count: nil, card_disputed_transactions_count: nil, card_disputed_transactions_dates: nil, card_disputed_transactions_total_amount: nil, card_fraud_transactions_count: nil, card_fraud_transactions_dates: nil, card_fraud_transactions_total_amount: nil, card_stopped_transactions_count: nil, card_stopped_transactions_dates: nil, user_active_profile_count: nil, user_address_count: nil, user_closed_profile_count: nil, user_dob_count: nil, user_email_count: nil, user_institution_count: nil, user_mobile_count: nil)
        #   @param accounts_active_count [Integer, nil] Number of active accounts associated with the identity.
        #
        #   @param accounts_closed_count [Integer, nil] Number of closed accounts associated with the identity.
        #
        #   @param accounts_closed_dates [Array<Date>, nil] Dates when accounts associated with the identity were closed.
        #
        #   @param accounts_count [Integer, nil] Number of accounts associated with the identity.
        #
        #   @param accounts_fraud_count [Integer, nil] Number of accounts associated with fraud.
        #
        #   @param accounts_fraud_labeled_dates [Array<Date>, nil] Dates when accounts were labeled as fraudulent.
        #
        #   @param accounts_fraud_loss_total_amount [Float, nil] Total fraud loss associated with the accounts.
        #
        #   @param ach_fraud_transactions_count [Integer, nil] Number of fraudulent ACH transactions.
        #
        #   @param ach_fraud_transactions_dates [Array<Date>, nil] Dates when fraudulent ACH transactions occurred.
        #
        #   @param ach_fraud_transactions_total_amount [Float, nil] Total amount of fraudulent ACH transactions.
        #
        #   @param ach_returned_transactions_count [Integer, nil] Number of returned ACH transactions.
        #
        #   @param ach_returned_transactions_dates [Array<Date>, nil] Dates when ACH transactions were returned.
        #
        #   @param ach_returned_transactions_total_amount [Float, nil] Total amount of returned ACH transactions.
        #
        #   @param applications_approved_count [Integer, nil] Number of approved applications associated with the identity.
        #
        #   @param applications_count [Integer, nil] Number of applications associated with the identity.
        #
        #   @param applications_dates [Array<Date>, nil] Dates when applications associated with the identity were submitted.
        #
        #   @param applications_declined_count [Integer, nil] Number of declined applications associated with the identity.
        #
        #   @param applications_fraud_count [Integer, nil] Number of applications associated with fraud.
        #
        #   @param card_disputed_transactions_count [Integer, nil] Number of disputed card transactions.
        #
        #   @param card_disputed_transactions_dates [Array<Date>, nil] Dates when card transactions were disputed.
        #
        #   @param card_disputed_transactions_total_amount [Float, nil] Total amount of disputed card transactions.
        #
        #   @param card_fraud_transactions_count [Integer, nil] Number of fraudulent card transactions.
        #
        #   @param card_fraud_transactions_dates [Array<Date>, nil] Dates when fraudulent card transactions occurred.
        #
        #   @param card_fraud_transactions_total_amount [Float, nil] Total amount of fraudulent card transactions.
        #
        #   @param card_stopped_transactions_count [Integer, nil] Number of stopped card transactions.
        #
        #   @param card_stopped_transactions_dates [Array<Date>, nil] Dates when card transactions were stopped.
        #
        #   @param user_active_profile_count [Integer, nil] Number of active profiles associated with the identity.
        #
        #   @param user_address_count [Integer, nil] Number of addresses associated with the identity.
        #
        #   @param user_closed_profile_count [Integer, nil] Number of closed profiles associated with the identity.
        #
        #   @param user_dob_count [Integer, nil] Number of dates of birth associated with the identity.
        #
        #   @param user_email_count [Integer, nil] Number of email addresses associated with the identity.
        #
        #   @param user_institution_count [Integer, nil] Number of financial institutions associated with the identity.
        #
        #   @param user_mobile_count [Integer, nil] Number of mobile numbers associated with the identity.
      end
    end
  end
end
