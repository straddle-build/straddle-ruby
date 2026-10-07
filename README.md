# Straddle Ruby SDK

Use Straddle's Pay by Bank and Embed APIs from Ruby. The SDK provides typed models, authentication, retries, and request configuration.

## Install

Use Ruby 3.2 or later. Add the gem to your application's `Gemfile`:

```ruby
gem "straddle", "~> 1.0.4" # x-release-please-version
```

Install your bundle:

```sh
bundle install
```

For a standalone script, install the gem directly:

```sh
gem install straddle
```

The RubyGems package is [`straddle`](https://rubygems.org/gems/straddle). Its source lives in `straddle-build/straddle-ruby`.

## Make your first request

Create a sandbox API key in the [Straddle Dashboard](https://dashboard.straddle.com), then set it in your environment. See [API authentication](https://docs.straddle.com/api-reference/authentication) for the setup steps.

```sh
export STRADDLE_API_KEY="YOUR_SANDBOX_API_KEY"
```

Save the following example as `quickstart.rb`. It requests the first page of customers from the sandbox:

```ruby
require "straddle"

client = Straddle::Client.new(
  bearer: ENV.fetch("STRADDLE_API_KEY"),
  base_url: "https://sandbox.straddle.com"
)

page = client.customers.list(page_number: 1, page_size: 10)
puts "Customers on this page: #{page.data.length}"
```

For a SaaS platform key, add `straddle_account_id: "YOUR_EMBEDDED_ACCOUNT_ID"` to the `list` arguments before running the example. This selects the embedded account whose customers you want to read. Direct accounts and marketplaces list customers without that header. See [platform account scoping](https://docs.straddle.com/guides/embed/api-headers).

Run the example from your application:

```sh
bundle exec ruby quickstart.rb
```

If you installed the gem directly, use `ruby quickstart.rb`.

A successful request prints the number of customers on the page. `Customers on this page: 0` is valid for an empty account. Customer records are in `page.data`; pagination and request metadata are in `page.meta`.

The remaining examples use this `client`.

## Configure authentication and environments

The example passes `STRADDLE_API_KEY` explicitly as `bearer`. If you omit `bearer`, the client reads `BEARER`.

Set `base_url` explicitly to select an environment. If you omit it, the client reads `STRADDLE_BASE_URL`, then defaults to `https://sandbox.straddle.com`. Production uses `https://production.straddle.com` and a production API key. See [environments](https://docs.straddle.com/api-reference/environments).

## Read additional pages

List methods return one response page. Choose the next `page_number` using `page.meta.total_pages`, and keep your filters and account scope the same between requests:

```ruby
next_page = client.customers.list(page_number: 2, page_size: 10)
```

Models expose response fields as attributes. Methods accept a plain hash or the corresponding parameter model. The gem also includes Sorbet `.rbi` and Steep `.rbs` signatures. See the [method reference](./api.md) for filters and response types.

## Handle errors

Catch `Straddle::Errors::APIError` to inspect the status, headers, and body of a failed request. Connection errors also inherit from this class and have no HTTP status.

```ruby
begin
  page = client.customers.list(page_size: 10)
rescue Straddle::Errors::APIError => error
  warn "#{error.status}: #{error.message}"
  raise
end
```

For a `401`, check that the key matches the selected environment. For a `403`, check the key's permissions and account scope. See [API errors](https://docs.straddle.com/api-reference/errors) for response details.

## Set retries and timeouts

The client retries connection errors, `408`, `409`, `429`, and `5xx` responses twice by default. It uses exponential backoff and honors supported `Retry-After` values. The default timeout is 60 seconds; retries can extend the total request duration.

Set `max_retries` and `timeout` in the constructor, or pass `request_options` for an individual request:

```ruby
page = client.customers.list(
  page_size: 10,
  request_options: {max_retries: 0, timeout: 30.0}
)
```

For write operations that accept an idempotency key, pass the operation's `idempotency_key` argument. Reuse that value when retrying the same operation. See [idempotency](https://docs.straddle.com/api-reference/idempotency).

## Client and request options

Set these options in the client constructor.

| Option | Purpose | Default |
| --- | --- | --- |
| `bearer` | API key | `BEARER` |
| `base_url` | API base URL | `STRADDLE_BASE_URL`, then sandbox |
| `webhook_secret` | Secret for webhook signature verification | `STRADDLE_WEBHOOK_SECRET` |
| `max_retries` | Retry count | `2` |
| `timeout` | Timeout in seconds | `60.0` |
| `initial_retry_delay` | Initial retry delay in seconds | `0.5` |
| `max_retry_delay` | Maximum backoff delay in seconds | `8.0` |

Pass these values inside a method's `request_options` hash.

| Option | Purpose |
| --- | --- |
| `extra_query` | Add query parameters |
| `extra_headers` | Add headers |
| `extra_body` | Add body fields |
| `max_retries` | Override the retry count |
| `timeout` | Override the timeout in seconds |

## Reference and support

Use the following resources as you build your integration:

- [SDK method reference](./api.md) and [operation signatures](./reference.md).
- [Straddle guides](https://docs.straddle.com): payment flows, sandbox testing, and API concepts.
- [GitHub issues](https://github.com/straddle-build/straddle-ruby/issues): SDK bugs and feature requests.
- [Local development](./CONTRIBUTING.md) and [versioning](./VERSIONING.md): submit customizations against `scalar-next` so Scalar carries them through regeneration.
- [Security policy](./SECURITY.md) and [Apache 2.0 license](./LICENSE).

Straddle generates this SDK with Scalar and maintains repository customizations through the workflow in `VERSIONING.md`.
