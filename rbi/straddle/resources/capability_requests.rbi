# typed: strong

module Straddle
  module Resources
    # Capability requests change the payment, customer, and consent types available to
    # an account.
    class CapabilityRequests
      # Creates one or more capability requests for an account and returns the resulting
      # requests.
      sig do
        params(
          account_id: String,
          businesses:
            Straddle::CapabilityRequestCreateParams::Businesses::OrHash,
          charges: Straddle::CapabilityRequestCreateParams::Charges::OrHash,
          individuals:
            Straddle::CapabilityRequestCreateParams::Individuals::OrHash,
          internet: Straddle::CapabilityRequestCreateParams::Internet::OrHash,
          payouts: Straddle::CapabilityRequestCreateParams::Payouts::OrHash,
          signed_agreement:
            Straddle::CapabilityRequestCreateParams::SignedAgreement::OrHash,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CapabilityRequestList)
      end
      def create(
        # Path param: The ID of the account.
        account_id,
        # Body param: Request to enable or disable payments from businesses.
        businesses: nil,
        # Body param: Requested charge capability and limits.
        charges: nil,
        # Body param: Request to enable or disable payments from individuals.
        individuals: nil,
        # Body param: Request to enable or disable internet and mobile payment
        # authorization.
        internet: nil,
        # Body param: Requested payout capability and limits.
        payouts: nil,
        # Body param: Request to enable or disable signed-agreement payment authorization.
        signed_agreement: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of capability requests for an account. Filter the list
      # by capability type, category, or status.
      sig do
        params(
          account_id: String,
          category: Straddle::CapabilityRequestListParams::Category::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order:
            Straddle::CapabilityRequestListParams::SortOrder::OrSymbol,
          status: Straddle::CapabilityRequestListParams::Status::OrSymbol,
          type: Straddle::CapabilityRequestListParams::Type::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::CapabilityRequestList)
      end
      def list(
        # Path param: The ID of the account.
        account_id,
        # Query param: Capability category to return.
        category: nil,
        # Query param: Page number. Defaults to `1`.
        page_number: nil,
        # Query param: Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Query param: Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Query param: Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Query param: Capability request status to return.
        status: nil,
        # Query param: Capability type to return.
        type: nil,
        # Header param: Optional client-generated identifier for tracing a series of
        # related requests.
        correlation_id: nil,
        # Header param: Optional client-generated identifier for tracing one request.
        request_id: nil,
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
