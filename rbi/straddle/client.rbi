# typed: strong

module Straddle
  class Client < Straddle::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :bearer

    sig { returns(T.nilable(String)) }
    attr_reader :webhook_secret

    # Accounts represent businesses that use Straddle through a platform.
    sig { returns(Straddle::Resources::Accounts) }
    attr_reader :accounts

    # Capability requests change the payment, customer, and consent types available to
    # an account.
    sig { returns(Straddle::Resources::CapabilityRequests) }
    attr_reader :capability_requests

    # Linked bank accounts connect external bank accounts to an account or platform
    # for charges, payouts, or billing.
    sig { returns(Straddle::Resources::LinkedBankAccounts) }
    attr_reader :linked_bank_accounts

    # Organizations group related Straddle accounts.
    sig { returns(Straddle::Resources::Organizations) }
    attr_reader :organizations

    # Representatives are people associated with a business account for ownership,
    # control, or authorization purposes.
    sig { returns(Straddle::Resources::Representatives) }
    attr_reader :representatives

    # Bridge connects customer bank accounts and creates paykeys from supported
    # provider tokens or bank account details.
    sig { returns(Straddle::Resources::Bridge) }
    attr_reader :bridge

    # Customers are individuals or businesses that send or receive payments through
    # your integration.
    sig { returns(Straddle::Resources::Customers) }
    attr_reader :customers

    # A paykey links a verified customer to a bank account without exposing bank
    # account details. Use a paykey to create charges and payouts.
    sig { returns(Straddle::Resources::Paykeys) }
    attr_reader :paykeys

    # Charges debit a customer's bank account through a paykey.
    sig { returns(Straddle::Resources::Charges) }
    attr_reader :charges

    # Funding events group charge and payout activity into transfers between Straddle
    # and your linked bank account.
    sig { returns(Straddle::Resources::FundingEvents) }
    attr_reader :funding_events

    # Payments provide a combined view of charges and payouts.
    sig { returns(Straddle::Resources::Payments) }
    attr_reader :payments

    # Payouts send money to a customer's bank account through a paykey.
    sig { returns(Straddle::Resources::Payouts) }
    attr_reader :payouts

    # Account settings define payment limits, capabilities, statement details, and
    # policy controls for an account.
    sig { returns(Straddle::Resources::AccountSettings) }
    attr_reader :account_settings

    sig { returns(Straddle::Resources::Webhooks) }
    attr_reader :webhooks

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer: T.nilable(String),
        webhook_secret: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Send the API key as a bearer token in the `Authorization` header. Defaults to
      # `ENV["BEARER"]`
      bearer: ENV["BEARER"],
      # Secret used to verify incoming webhook signatures. Defaults to
      # `ENV["STRADDLE_WEBHOOK_SECRET"]`
      webhook_secret: ENV["STRADDLE_WEBHOOK_SECRET"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["STRADDLE_BASE_URL"]`
      base_url: ENV["STRADDLE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Straddle::Client::DEFAULT_MAX_RETRIES,
      timeout: Straddle::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Straddle::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Straddle::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
