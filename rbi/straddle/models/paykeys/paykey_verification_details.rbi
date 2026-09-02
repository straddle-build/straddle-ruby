# typed: strong

module Straddle
  module Models
    PaykeyVerificationDetails = Paykeys::PaykeyVerificationDetails

    module Paykeys
      class PaykeyVerificationDetails < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Paykeys::PaykeyVerificationDetails,
              Straddle::Internal::AnyHash
            )
          end

        # Unique identifier for the verification details.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Straddle::Paykeys::PaykeyVerificationBreakdown) }
        attr_reader :breakdown

        sig do
          params(
            breakdown: Straddle::Paykeys::PaykeyVerificationBreakdown::OrHash
          ).void
        end
        attr_writer :breakdown

        # Timestamp of when the verification was initiated.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol)
        end
        attr_accessor :decision

        # Messages returned by the paykey verification process.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :messages

        # Timestamp of the most recent update to the verification details.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            breakdown: Straddle::Paykeys::PaykeyVerificationBreakdown::OrHash,
            created_at: Time,
            decision: Straddle::Paykeys::PaykeyVerificationResult::OrSymbol,
            messages: T::Hash[Symbol, String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the verification details.
          id:,
          breakdown:,
          # Timestamp of when the verification was initiated.
          created_at:,
          decision:,
          # Messages returned by the paykey verification process.
          messages:,
          # Timestamp of the most recent update to the verification details.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              breakdown: Straddle::Paykeys::PaykeyVerificationBreakdown,
              created_at: Time,
              decision:
                Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol,
              messages: T::Hash[Symbol, String],
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
