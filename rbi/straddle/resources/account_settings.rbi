# typed: strong

module Straddle
  module Resources
    # Account settings define payment limits, capabilities, statement details, and
    # policy controls for an account.
    class AccountSettings
      # Returns all effective settings for the account, including values inherited from
      # its organization, platform, and system defaults.
      sig do
        params(
          account_id: String,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(Straddle::AccountSettingsResponse)
      end
      def retrieve(
        # The ID of the account.
        account_id,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
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
