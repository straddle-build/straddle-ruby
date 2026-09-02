# typed: strong

module Straddle
  module Models
    module Customers
      class ReputationInsights < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::ReputationInsights,
              Straddle::Internal::AnyHash
            )
          end

        # Number of active accounts associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :accounts_active_count

        # Number of closed accounts associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :accounts_closed_count

        # Dates when accounts associated with the identity were closed.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :accounts_closed_dates

        # Number of accounts associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :accounts_count

        # Number of accounts associated with fraud.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :accounts_fraud_count

        # Dates when accounts were labeled as fraudulent.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :accounts_fraud_labeled_dates

        # Total fraud loss associated with the accounts.
        sig { returns(T.nilable(Float)) }
        attr_accessor :accounts_fraud_loss_total_amount

        # Number of fraudulent ACH transactions.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :ach_fraud_transactions_count

        # Dates when fraudulent ACH transactions occurred.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :ach_fraud_transactions_dates

        # Total amount of fraudulent ACH transactions.
        sig { returns(T.nilable(Float)) }
        attr_accessor :ach_fraud_transactions_total_amount

        # Number of returned ACH transactions.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :ach_returned_transactions_count

        # Dates when ACH transactions were returned.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :ach_returned_transactions_dates

        # Total amount of returned ACH transactions.
        sig { returns(T.nilable(Float)) }
        attr_accessor :ach_returned_transactions_total_amount

        # Number of approved applications associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :applications_approved_count

        # Number of applications associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :applications_count

        # Dates when applications associated with the identity were submitted.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :applications_dates

        # Number of declined applications associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :applications_declined_count

        # Number of applications associated with fraud.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :applications_fraud_count

        # Number of disputed card transactions.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :card_disputed_transactions_count

        # Dates when card transactions were disputed.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :card_disputed_transactions_dates

        # Total amount of disputed card transactions.
        sig { returns(T.nilable(Float)) }
        attr_accessor :card_disputed_transactions_total_amount

        # Number of fraudulent card transactions.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :card_fraud_transactions_count

        # Dates when fraudulent card transactions occurred.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :card_fraud_transactions_dates

        # Total amount of fraudulent card transactions.
        sig { returns(T.nilable(Float)) }
        attr_accessor :card_fraud_transactions_total_amount

        # Number of stopped card transactions.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :card_stopped_transactions_count

        # Dates when card transactions were stopped.
        sig { returns(T.nilable(T::Array[Date])) }
        attr_accessor :card_stopped_transactions_dates

        # Number of active profiles associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_active_profile_count

        # Number of addresses associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_address_count

        # Number of closed profiles associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_closed_profile_count

        # Number of dates of birth associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_dob_count

        # Number of email addresses associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_email_count

        # Number of financial institutions associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_institution_count

        # Number of mobile numbers associated with the identity.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :user_mobile_count

        sig do
          params(
            accounts_active_count: T.nilable(Integer),
            accounts_closed_count: T.nilable(Integer),
            accounts_closed_dates: T.nilable(T::Array[Date]),
            accounts_count: T.nilable(Integer),
            accounts_fraud_count: T.nilable(Integer),
            accounts_fraud_labeled_dates: T.nilable(T::Array[Date]),
            accounts_fraud_loss_total_amount: T.nilable(Float),
            ach_fraud_transactions_count: T.nilable(Integer),
            ach_fraud_transactions_dates: T.nilable(T::Array[Date]),
            ach_fraud_transactions_total_amount: T.nilable(Float),
            ach_returned_transactions_count: T.nilable(Integer),
            ach_returned_transactions_dates: T.nilable(T::Array[Date]),
            ach_returned_transactions_total_amount: T.nilable(Float),
            applications_approved_count: T.nilable(Integer),
            applications_count: T.nilable(Integer),
            applications_dates: T.nilable(T::Array[Date]),
            applications_declined_count: T.nilable(Integer),
            applications_fraud_count: T.nilable(Integer),
            card_disputed_transactions_count: T.nilable(Integer),
            card_disputed_transactions_dates: T.nilable(T::Array[Date]),
            card_disputed_transactions_total_amount: T.nilable(Float),
            card_fraud_transactions_count: T.nilable(Integer),
            card_fraud_transactions_dates: T.nilable(T::Array[Date]),
            card_fraud_transactions_total_amount: T.nilable(Float),
            card_stopped_transactions_count: T.nilable(Integer),
            card_stopped_transactions_dates: T.nilable(T::Array[Date]),
            user_active_profile_count: T.nilable(Integer),
            user_address_count: T.nilable(Integer),
            user_closed_profile_count: T.nilable(Integer),
            user_dob_count: T.nilable(Integer),
            user_email_count: T.nilable(Integer),
            user_institution_count: T.nilable(Integer),
            user_mobile_count: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of active accounts associated with the identity.
          accounts_active_count: nil,
          # Number of closed accounts associated with the identity.
          accounts_closed_count: nil,
          # Dates when accounts associated with the identity were closed.
          accounts_closed_dates: nil,
          # Number of accounts associated with the identity.
          accounts_count: nil,
          # Number of accounts associated with fraud.
          accounts_fraud_count: nil,
          # Dates when accounts were labeled as fraudulent.
          accounts_fraud_labeled_dates: nil,
          # Total fraud loss associated with the accounts.
          accounts_fraud_loss_total_amount: nil,
          # Number of fraudulent ACH transactions.
          ach_fraud_transactions_count: nil,
          # Dates when fraudulent ACH transactions occurred.
          ach_fraud_transactions_dates: nil,
          # Total amount of fraudulent ACH transactions.
          ach_fraud_transactions_total_amount: nil,
          # Number of returned ACH transactions.
          ach_returned_transactions_count: nil,
          # Dates when ACH transactions were returned.
          ach_returned_transactions_dates: nil,
          # Total amount of returned ACH transactions.
          ach_returned_transactions_total_amount: nil,
          # Number of approved applications associated with the identity.
          applications_approved_count: nil,
          # Number of applications associated with the identity.
          applications_count: nil,
          # Dates when applications associated with the identity were submitted.
          applications_dates: nil,
          # Number of declined applications associated with the identity.
          applications_declined_count: nil,
          # Number of applications associated with fraud.
          applications_fraud_count: nil,
          # Number of disputed card transactions.
          card_disputed_transactions_count: nil,
          # Dates when card transactions were disputed.
          card_disputed_transactions_dates: nil,
          # Total amount of disputed card transactions.
          card_disputed_transactions_total_amount: nil,
          # Number of fraudulent card transactions.
          card_fraud_transactions_count: nil,
          # Dates when fraudulent card transactions occurred.
          card_fraud_transactions_dates: nil,
          # Total amount of fraudulent card transactions.
          card_fraud_transactions_total_amount: nil,
          # Number of stopped card transactions.
          card_stopped_transactions_count: nil,
          # Dates when card transactions were stopped.
          card_stopped_transactions_dates: nil,
          # Number of active profiles associated with the identity.
          user_active_profile_count: nil,
          # Number of addresses associated with the identity.
          user_address_count: nil,
          # Number of closed profiles associated with the identity.
          user_closed_profile_count: nil,
          # Number of dates of birth associated with the identity.
          user_dob_count: nil,
          # Number of email addresses associated with the identity.
          user_email_count: nil,
          # Number of financial institutions associated with the identity.
          user_institution_count: nil,
          # Number of mobile numbers associated with the identity.
          user_mobile_count: nil
        )
        end

        sig do
          override.returns(
            {
              accounts_active_count: T.nilable(Integer),
              accounts_closed_count: T.nilable(Integer),
              accounts_closed_dates: T.nilable(T::Array[Date]),
              accounts_count: T.nilable(Integer),
              accounts_fraud_count: T.nilable(Integer),
              accounts_fraud_labeled_dates: T.nilable(T::Array[Date]),
              accounts_fraud_loss_total_amount: T.nilable(Float),
              ach_fraud_transactions_count: T.nilable(Integer),
              ach_fraud_transactions_dates: T.nilable(T::Array[Date]),
              ach_fraud_transactions_total_amount: T.nilable(Float),
              ach_returned_transactions_count: T.nilable(Integer),
              ach_returned_transactions_dates: T.nilable(T::Array[Date]),
              ach_returned_transactions_total_amount: T.nilable(Float),
              applications_approved_count: T.nilable(Integer),
              applications_count: T.nilable(Integer),
              applications_dates: T.nilable(T::Array[Date]),
              applications_declined_count: T.nilable(Integer),
              applications_fraud_count: T.nilable(Integer),
              card_disputed_transactions_count: T.nilable(Integer),
              card_disputed_transactions_dates: T.nilable(T::Array[Date]),
              card_disputed_transactions_total_amount: T.nilable(Float),
              card_fraud_transactions_count: T.nilable(Integer),
              card_fraud_transactions_dates: T.nilable(T::Array[Date]),
              card_fraud_transactions_total_amount: T.nilable(Float),
              card_stopped_transactions_count: T.nilable(Integer),
              card_stopped_transactions_dates: T.nilable(T::Array[Date]),
              user_active_profile_count: T.nilable(Integer),
              user_address_count: T.nilable(Integer),
              user_closed_profile_count: T.nilable(Integer),
              user_dob_count: T.nilable(Integer),
              user_email_count: T.nilable(Integer),
              user_institution_count: T.nilable(Integer),
              user_mobile_count: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
