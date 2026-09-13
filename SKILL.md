---
name: straddle-api-ruby-sdk
description: "Ruby SDK for Straddle API. Use when writing Ruby code that calls Straddle API with the straddle package: installing it, constructing and authenticating the client, and calling API operations."
---

# Straddle API Ruby SDK

Generated Ruby client for Straddle API, published as `straddle`. Use the generated client instead of hand-writing HTTP requests.

## Install

Add the gem to your application's `Gemfile`:

```ruby
gem "straddle", "~> 1.0.4" # x-release-please-version
```

Or install it directly:

```sh
gem install straddle
```

## Client setup and authentication

```ruby
require "straddle"

client = Straddle::Client.new(
  bearer: ENV["BEARER"], # defaults to the BEARER env var
)
```

Provide credentials using the options below. Environment variables are read automatically when the target runtime supports them:

- `bearer` (env: `BEARER`) — Send the API key as a bearer token in the `Authorization` header.

## Calling operations

```ruby
require "straddle"

client = Straddle::Client.new(
  bearer: ENV["BEARER"], # defaults to the BEARER env var
)

response = client.accounts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

Method names, parameter shapes, and response types are generated from the API description — do not guess them. Look up the exact call signature in [api.md](./api.md) before writing a call.

## Error handling

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

## Requirements

- Ruby >= 3.2

## Reference files

- [README.md](./README.md) — full feature tour: client options, request options, retries and timeouts.
- [api.md](./api.md) — complete catalogue of every operation with request and response types.
