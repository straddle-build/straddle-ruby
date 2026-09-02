# frozen_string_literal: true

module Straddle
  module Resources
    # Account settings define payment limits, capabilities, statement details, and
    # policy controls for an account.
    class AccountSettings
      # Returns all effective settings for the account, including values inherited from
      # its organization, platform, and system defaults.
      #
      # @overload retrieve(account_id, correlation_id: nil, request_id: nil, request_options: {})
      #
      # @param account_id [String] The ID of the account.
      #
      # @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      # @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      # @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Straddle::Models::AccountSettingsResponse]
      #
      # @see Straddle::Models::AccountSettingRetrieveParams
      def retrieve(account_id, params = {})
        parsed, options = Straddle::AccountSettingRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/account_settings/%1$s", account_id],
          headers: parsed.transform_keys(correlation_id: "correlation-id", request_id: "request-id"),
          model: Straddle::AccountSettingsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Straddle::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
