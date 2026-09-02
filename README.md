# Straddle API

This library provides convenient access to the Straddle API from Ruby.

The full API of this library can be found in [api.md](./api.md).

<br />

## Contents

- [Installation](#installation)
- [Usage](#usage)
- [API Reference](./api.md)
- [Authentication](#authentication)
- [Errors](#errors)
- [Client Options](#client-options)
- [Request Options](#request-options)
- [Retries and Timeouts](#retries-and-timeouts)
- [Helpers](#helpers)
- [Requirements](#requirements)

<br />

## Installation

Add the gem to your application's `Gemfile`:

```ruby
gem "straddle", "~> 0.1.0" # x-release-please-version
```

Or install it directly:

```sh
gem install straddle
```

<br />

## Usage

```ruby
require "straddle"

client = Straddle::Client.new(
  bearer: ENV["BEARER"], # defaults to the BEARER env var
)

response = client.accounts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

The examples in the following sections assume a `client` configured as shown above.

See the [API reference](./api.md) for every available operation.

<br />

## Authentication

Pass credentials to the generated client constructor. Environment variables are read automatically when supported by the target runtime.

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `bearer` | `String \| nil` | - | Send the API key as a bearer token in the `Authorization` header. Defaults to BEARER. |

Declared schemes:

- `Bearer` bearer token

<br />

## Errors

Non-success responses throw generated API errors. Error objects expose status, headers, response body, and request metadata where the target runtime supports it.

```ruby
begin
  response = client.accounts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

  puts response.inspect
rescue Straddle::Errors::APIError => error
  puts "#{error.status}: #{error.message}"
  raise
end
```

Documented error statuses: `400`, `401`, `403`, `404`, `422`, `500`.

<br />

## Client Options

Configure the generated client by setting any of these options when you create it.

```ruby
require "straddle"

client = Straddle::Client.new(
  timeout: 60.0,
  max_retries: 2,
)
```

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `bearer` | `String \| nil` | `ENV["BEARER"]` | Send the API key as a bearer token in the `Authorization` header. |
| `webhook_secret` | `String \| nil` | `ENV["STRADDLE_WEBHOOK_SECRET"]` | Secret used to verify incoming webhook signatures. |
| `base_url` | `String \| nil` | `ENV["STRADDLE_BASE_URL"]` | Override the default API base URL. |
| `max_retries` | `Integer` | `2` | Max number of retries to attempt after a failed retryable request. |
| `timeout` | `Float` | `60.0` | Seconds to wait for a response before timing out. |
| `initial_retry_delay` | `Float` | `0.5` | Seconds to wait before the first retry; later retries back off exponentially. |
| `max_retry_delay` | `Float` | `8.0` | Upper bound, in seconds, on the delay between retries. |

<br />

## Request Options

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `idempotency_key` | `String` | - | Idempotency key for one request, sent when the SDK configures an idempotency header. |
| `extra_query` | `Hash` | - | Additional query parameters for one request. |
| `extra_headers` | `Hash` | - | Additional headers for one request. |
| `extra_body` | `Hash` | - | Additional body fields for one request. |
| `max_retries` | `Integer` | - | Override retry count for one request. |
| `timeout` | `Float` | - | Override timeout for one request. |

<br />

## Retries and Timeouts

Generated clients support request timeouts and retry temporary failures such as network errors, 408, 409, 429, and 5xx responses. Retry delays honor `Retry-After` headers when present. Tune the retry and timeout client options shown above, or override them per request.

<br />

## Helpers

- Every model is a `BaseModel`: pass a plain hash or a model instance, and read decoded values back as attributes.
- The gem ships `rbi/` and `sig/` trees, so Sorbet and Steep type-check calls into the SDK.

<br />

## Requirements

- Ruby >= 3.2

Powered by Scalar.
