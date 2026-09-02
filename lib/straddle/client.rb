# frozen_string_literal: true

module Straddle
  class Client < Straddle::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Send the API key as a bearer token in the `Authorization` header.
    # @return [String]
    attr_reader :bearer

    # Secret used to verify incoming webhook signatures.
    # @return [String, nil]
    attr_reader :webhook_secret

    # Accounts represent businesses that use Straddle through a platform.
    # @return [Straddle::Resources::Accounts]
    attr_reader :accounts

    # Capability requests change the payment, customer, and consent types available to
    # an account.
    # @return [Straddle::Resources::CapabilityRequests]
    attr_reader :capability_requests

    # Linked bank accounts connect external bank accounts to an account or platform
    # for charges, payouts, or billing.
    # @return [Straddle::Resources::LinkedBankAccounts]
    attr_reader :linked_bank_accounts

    # Organizations group related Straddle accounts.
    # @return [Straddle::Resources::Organizations]
    attr_reader :organizations

    # Representatives are people associated with a business account for ownership,
    # control, or authorization purposes.
    # @return [Straddle::Resources::Representatives]
    attr_reader :representatives

    # Bridge connects customer bank accounts and creates paykeys from supported
    # provider tokens or bank account details.
    # @return [Straddle::Resources::Bridge]
    attr_reader :bridge

    # Customers are individuals or businesses that send or receive payments through
    # your integration.
    # @return [Straddle::Resources::Customers]
    attr_reader :customers

    # A paykey links a verified customer to a bank account without exposing bank
    # account details. Use a paykey to create charges and payouts.
    # @return [Straddle::Resources::Paykeys]
    attr_reader :paykeys

    # Charges debit a customer's bank account through a paykey.
    # @return [Straddle::Resources::Charges]
    attr_reader :charges

    # Funding events group charge and payout activity into transfers between Straddle
    # and your linked bank account.
    # @return [Straddle::Resources::FundingEvents]
    attr_reader :funding_events

    # Payments provide a combined view of charges and payouts.
    # @return [Straddle::Resources::Payments]
    attr_reader :payments

    # Payouts send money to a customer's bank account through a paykey.
    # @return [Straddle::Resources::Payouts]
    attr_reader :payouts

    # Account settings define payment limits, capabilities, statement details, and
    # policy controls for an account.
    # @return [Straddle::Resources::AccountSettings]
    attr_reader :account_settings

    # @return [Straddle::Resources::Webhooks]
    attr_reader :webhooks

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"authorization" => "Bearer #{@bearer}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param bearer [String, nil] Send the API key as a bearer token in the `Authorization` header. Defaults to
    # `ENV["BEARER"]`
    #
    # @param webhook_secret [String, nil] Secret used to verify incoming webhook signatures. Defaults to
    # `ENV["STRADDLE_WEBHOOK_SECRET"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["STRADDLE_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      bearer: ENV["BEARER"],
      webhook_secret: ENV["STRADDLE_WEBHOOK_SECRET"],
      base_url: ENV["STRADDLE_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://sandbox.straddle.com"

      raise ArgumentError.new("bearer is required, and can be set via environ: \"BEARER\"") if bearer.nil?

      headers = {}
      custom_headers_env = ENV["STRADDLE_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env
          .split("\n")
          .each do |line|
            colon = line.index(":")
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip unless colon.nil?
          end
        headers = parsed.merge(headers)
      end

      @bearer = bearer.to_s
      @webhook_secret = webhook_secret&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @accounts = Straddle::Resources::Accounts.new(client: self)
      @capability_requests = Straddle::Resources::CapabilityRequests.new(client: self)
      @linked_bank_accounts = Straddle::Resources::LinkedBankAccounts.new(client: self)
      @organizations = Straddle::Resources::Organizations.new(client: self)
      @representatives = Straddle::Resources::Representatives.new(client: self)
      @bridge = Straddle::Resources::Bridge.new(client: self)
      @customers = Straddle::Resources::Customers.new(client: self)
      @paykeys = Straddle::Resources::Paykeys.new(client: self)
      @charges = Straddle::Resources::Charges.new(client: self)
      @funding_events = Straddle::Resources::FundingEvents.new(client: self)
      @payments = Straddle::Resources::Payments.new(client: self)
      @payouts = Straddle::Resources::Payouts.new(client: self)
      @account_settings = Straddle::Resources::AccountSettings.new(client: self)
      @webhooks = Straddle::Resources::Webhooks.new(client: self)
    end
  end
end
