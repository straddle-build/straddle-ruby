# typed: strong

module Straddle
  module Resources
    class Customers
      # Customers are individuals or businesses that send or receive payments through
      # your integration.
      class Review
        # Returns the results of a customer's identity and fraud review. The response
        # includes decisions, risk and correlation scores, reason codes, watchlist
        # matches, and network alerts.
        sig do
          params(
            id: String,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::Customers::CustomerReviewResponse)
        end
        def list(
          # Unique identifier for the customer.
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

        # Updates the verification decision for a customer. The customer's current
        # `status` must be `review`.
        sig do
          params(
            id: String,
            status:
              Straddle::Customers::ReviewSetVerificationDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(Straddle::CustomerResponse)
        end
        def set_verification_decision(
          # Path param: Unique identifier for the customer.
          id,
          # Body param: The final status of the customer review.
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
