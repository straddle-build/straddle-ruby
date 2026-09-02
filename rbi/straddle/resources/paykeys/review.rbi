# typed: strong

module Straddle
  module Resources
    class Paykeys
      # A paykey links a verified customer to a bank account without exposing bank
      # account details. Use a paykey to create charges and payouts.
      class Review
        # Returns a paykey verification review, including the decision, score breakdowns,
        # and result codes.
        sig do
          params(
            id: String,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Paykeys::PaykeyReviewResponse)
        end
        def list(
          # Unique identifier for the paykey.
          id,
          # Optional client-generated identifier for tracing a series of related requests.
          correlation_id: nil,
          # Optional client-generated identifier for tracing one request.
          request_id: nil,
          # For platform requests, the embedded account UUID that sets the request scope.
          straddle_account_id: nil,
          request_options: {}
        )
        end

        # Updates the verification decision for a paykey. The paykey's current `status`
        # must be `review`.
        sig do
          params(
            id: String,
            status:
              Straddle::Paykeys::ReviewSetVerificationDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::PaykeyResponse)
        end
        def set_verification_decision(
          # Path param: Unique identifier for the paykey.
          id,
          # Body param
          status:,
          # Header param: Optional client-generated identifier for tracing a series of
          # related requests.
          correlation_id: nil,
          # Header param: Optional client-generated key for an idempotent request.
          idempotency_key: nil,
          # Header param: Optional client-generated identifier for tracing one request.
          request_id: nil,
          # Header param: For platform requests, the embedded account UUID that sets the
          # request scope.
          straddle_account_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Straddle::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
