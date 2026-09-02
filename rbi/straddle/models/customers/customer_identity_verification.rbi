# typed: strong

module Straddle
  module Models
    CustomerIdentityVerification = Customers::CustomerIdentityVerification

    module Customers
      class CustomerIdentityVerification < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::CustomerIdentityVerification,
              Straddle::Internal::AnyHash
            )
          end

        # Results for each customer verification check, including decisions, risk scores,
        # and correlation scores.
        sig do
          returns(Straddle::Customers::CustomerIdentityVerification::Breakdown)
        end
        attr_reader :breakdown

        sig do
          params(
            breakdown:
              Straddle::Customers::CustomerIdentityVerification::Breakdown::OrHash
          ).void
        end
        attr_writer :breakdown

        # Timestamp of when the review was initiated.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Straddle::Customers::VerificationDecision::TaggedSymbol) }
        attr_accessor :decision

        # Unique identifier for the review.
        sig { returns(String) }
        attr_accessor :review_id

        # Timestamp of the most recent update to the review.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Straddle::Customers::CustomerKYCVerification)) }
        attr_reader :kyc

        sig do
          params(kyc: Straddle::Customers::CustomerKYCVerification::OrHash).void
        end
        attr_writer :kyc

        # Messages returned by the customer verification process.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :messages

        sig do
          returns(T.nilable(Straddle::Customers::IdentityVerificationAlerts))
        end
        attr_reader :network_alerts

        sig do
          params(
            network_alerts:
              Straddle::Customers::IdentityVerificationAlerts::OrHash
          ).void
        end
        attr_writer :network_alerts

        sig { returns(T.nilable(Straddle::Customers::ReputationCheck)) }
        attr_reader :reputation

        sig do
          params(reputation: Straddle::Customers::ReputationCheck::OrHash).void
        end
        attr_writer :reputation

        sig do
          returns(T.nilable(Straddle::Customers::IdentityVerificationWatchlist))
        end
        attr_reader :watch_list

        sig do
          params(
            watch_list:
              Straddle::Customers::IdentityVerificationWatchlist::OrHash
          ).void
        end
        attr_writer :watch_list

        sig do
          params(
            breakdown:
              Straddle::Customers::CustomerIdentityVerification::Breakdown::OrHash,
            created_at: Time,
            decision: Straddle::Customers::VerificationDecision::OrSymbol,
            review_id: String,
            updated_at: Time,
            kyc: Straddle::Customers::CustomerKYCVerification::OrHash,
            messages: T.nilable(T::Hash[Symbol, String]),
            network_alerts:
              Straddle::Customers::IdentityVerificationAlerts::OrHash,
            reputation: Straddle::Customers::ReputationCheck::OrHash,
            watch_list:
              Straddle::Customers::IdentityVerificationWatchlist::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Results for each customer verification check, including decisions, risk scores,
          # and correlation scores.
          breakdown:,
          # Timestamp of when the review was initiated.
          created_at:,
          decision:,
          # Unique identifier for the review.
          review_id:,
          # Timestamp of the most recent update to the review.
          updated_at:,
          kyc: nil,
          # Messages returned by the customer verification process.
          messages: nil,
          network_alerts: nil,
          reputation: nil,
          watch_list: nil
        )
        end

        sig do
          override.returns(
            {
              breakdown:
                Straddle::Customers::CustomerIdentityVerification::Breakdown,
              created_at: Time,
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol,
              review_id: String,
              updated_at: Time,
              kyc: Straddle::Customers::CustomerKYCVerification,
              messages: T.nilable(T::Hash[Symbol, String]),
              network_alerts: Straddle::Customers::IdentityVerificationAlerts,
              reputation: Straddle::Customers::ReputationCheck,
              watch_list: Straddle::Customers::IdentityVerificationWatchlist
            }
          )
        end
        def to_hash
        end

        class Breakdown < Straddle::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Straddle::Customers::CustomerIdentityVerification::Breakdown,
                Straddle::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :address

          sig do
            params(
              address:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :address

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :business_evaluation

          sig do
            params(
              business_evaluation:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :business_evaluation

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :business_identification

          sig do
            params(
              business_identification:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :business_identification

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :business_validation

          sig do
            params(
              business_validation:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :business_validation

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :email

          sig do
            params(
              email: Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :email

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :fraud

          sig do
            params(
              fraud: Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :fraud

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :phone

          sig do
            params(
              phone: Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :phone

          sig do
            returns(
              T.nilable(Straddle::Customers::IdentityVerificationBreakdown)
            )
          end
          attr_reader :synthetic

          sig do
            params(
              synthetic:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).void
          end
          attr_writer :synthetic

          # Results for each customer verification check, including decisions, risk scores,
          # and correlation scores.
          sig do
            params(
              address:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              business_evaluation:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              business_identification:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              business_validation:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              email: Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              fraud: Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              phone: Straddle::Customers::IdentityVerificationBreakdown::OrHash,
              synthetic:
                Straddle::Customers::IdentityVerificationBreakdown::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            address: nil,
            business_evaluation: nil,
            business_identification: nil,
            business_validation: nil,
            email: nil,
            fraud: nil,
            phone: nil,
            synthetic: nil
          )
          end

          sig do
            override.returns(
              {
                address: Straddle::Customers::IdentityVerificationBreakdown,
                business_evaluation:
                  Straddle::Customers::IdentityVerificationBreakdown,
                business_identification:
                  Straddle::Customers::IdentityVerificationBreakdown,
                business_validation:
                  Straddle::Customers::IdentityVerificationBreakdown,
                email: Straddle::Customers::IdentityVerificationBreakdown,
                fraud: Straddle::Customers::IdentityVerificationBreakdown,
                phone: Straddle::Customers::IdentityVerificationBreakdown,
                synthetic: Straddle::Customers::IdentityVerificationBreakdown
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
