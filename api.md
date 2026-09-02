# Straddle Ruby API

Complete reference of every operation, grouped by resource. See [the README](./README.md) for usage and configuration.

## Contents

- [`Accounts`](#accounts)
  - [Get an account](#get-an-account)
  - [Update an account](#update-an-account)
  - [Create an account](#create-an-account)
  - [List accounts](#list-accounts)
  - [Onboard an account](#onboard-an-account)
  - [Simulate status transitions for a sandbox account](#simulate-status-transitions-for-a-sandbox-account)
- [`CapabilityRequests`](#capabilityrequests)
  - [Create capability requests](#create-capability-requests)
  - [List capability requests](#list-capability-requests)
- [`LinkedBankAccounts`](#linkedbankaccounts)
  - [Create a linked bank account](#create-a-linked-bank-account)
  - [List linked bank accounts](#list-linked-bank-accounts)
  - [Update a linked bank account](#update-a-linked-bank-account)
  - [Get a linked bank account](#get-a-linked-bank-account)
  - [Get an unmasked linked bank account](#get-an-unmasked-linked-bank-account)
  - [Cancel a linked bank account](#cancel-a-linked-bank-account)
- [`Organizations`](#organizations)
  - [Create an organization](#create-an-organization)
  - [List organizations](#list-organizations)
  - [Get an organization](#get-an-organization)
- [`Representatives`](#representatives)
  - [Create a representative](#create-a-representative)
  - [List representatives](#list-representatives)
  - [Update a representative](#update-a-representative)
  - [Get a representative](#get-a-representative)
  - [Get an unmasked representative](#get-an-unmasked-representative)
- [`Bridge`](#bridge)
  - [Create a paykey from bank account details](#create-a-paykey-from-bank-account-details)
  - [Create a paykey from a Plaid token](#create-a-paykey-from-a-plaid-token)
  - [Create a Bridge widget session token](#create-a-bridge-widget-session-token)
  - [Create a paykey from a Quiltt token](#create-a-paykey-from-a-quiltt-token)
- [`Customers`](#customers)
  - [Get a customer](#get-a-customer)
  - [Update a customer](#update-a-customer)
  - [Delete a customer](#delete-a-customer)
  - [List customers](#list-customers)
  - [Create a customer](#create-a-customer)
  - [Get an unmasked customer](#get-an-unmasked-customer)
  - [Refresh a customer review](#refresh-a-customer-review)
  - [`Customers Review`](#customers-review)
    - [Get a customer review](#get-a-customer-review)
    - [Set a customer verification decision](#set-a-customer-verification-decision)
- [`Paykeys`](#paykeys)
  - [Get a paykey](#get-a-paykey)
  - [Get an unmasked paykey](#get-an-unmasked-paykey)
  - [List paykeys](#list-paykeys)
  - [Reveal a paykey token](#reveal-a-paykey-token)
  - [Cancel a paykey](#cancel-a-paykey)
  - [Refresh a paykey review](#refresh-a-paykey-review)
  - [Refresh a paykey balance](#refresh-a-paykey-balance)
  - [Unblock a paykey](#unblock-a-paykey)
  - [`Paykeys Review`](#paykeys-review)
    - [Set a paykey verification decision](#set-a-paykey-verification-decision)
    - [Get a paykey review](#get-a-paykey-review)
- [`Charges`](#charges)
  - [Get a charge](#get-a-charge)
  - [Update a charge](#update-a-charge)
  - [Create a charge](#create-a-charge)
  - [Hold a charge](#hold-a-charge)
  - [Release a charge](#release-a-charge)
  - [Cancel a charge](#cancel-a-charge)
  - [Get an unmasked charge](#get-an-unmasked-charge)
  - [Resubmit a charge](#resubmit-a-charge)
  - [Refund a paid charge](#refund-a-paid-charge)
  - [Upload a proof-of-authorization document for a charge](#upload-a-proof-of-authorization-document-for-a-charge)
- [`FundingEvents`](#fundingevents)
  - [List funding events](#list-funding-events)
  - [Get a funding event](#get-a-funding-event)
  - [Simulate a funding event](#simulate-a-funding-event)
  - [List funding event payments](#list-funding-event-payments)
- [`Payments`](#payments)
  - [List payments](#list-payments)
- [`Payouts`](#payouts)
  - [Get a payout](#get-a-payout)
  - [Update a payout](#update-a-payout)
  - [Create a payout](#create-a-payout)
  - [Hold a payout](#hold-a-payout)
  - [Release a payout](#release-a-payout)
  - [Cancel a payout](#cancel-a-payout)
  - [Get an unmasked payout](#get-an-unmasked-payout)
  - [Resubmit a payout](#resubmit-a-payout)
  - [Upload a proof-of-authorization document for a payout](#upload-a-proof-of-authorization-document-for-a-payout)
- [`AccountSettings`](#accountsettings)
  - [Get account settings](#get-account-settings)

## Setup

```ruby
require "straddle"

client = Straddle::Client.new(
  bearer: ENV["BEARER"], # defaults to the BEARER env var
)
```

## `Accounts`

Accounts represent businesses that use Straddle through a platform.

### Get an account

Returns the account with the specified ID.

| Direction | Type |
| --- | --- |
| Request | [`AccountRetrieveParams`](././lib/straddle/models/account_retrieve_params.rb) |
| Response | [`AccountResponse`](././lib/straddle/models/account_response.rb) |

```ruby
response = client.accounts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Update an account

Updates an account's business profile, metadata, and external ID, then returns the account.

| Direction | Type |
| --- | --- |
| Request | [`AccountUpdateParams`](././lib/straddle/models/account_update_params.rb) |
| Response | [`AccountResponse`](././lib/straddle/models/account_response.rb) |

```ruby
response = client.accounts.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { business_profile: StringIO.new("smoke-test"), external_id: "", metadata: {  } })

puts response.inspect
```

### Create an account

Creates a business account in the specified organization and returns the account.

| Direction | Type |
| --- | --- |
| Request | [`AccountCreateParams`](././lib/straddle/models/account_create_params.rb) |
| Response | [`AccountResponse`](././lib/straddle/models/account_response.rb) |

```ruby
response = client.accounts.create({ access_level: "standard", account_type: "business", business_profile: StringIO.new("smoke-test"), organization_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", external_id: "", metadata: {  } })

puts response.inspect
```

### List accounts

Returns a paginated list of accounts for your platform. Filter the list by status, type, external ID, or text search.

| Direction | Type |
| --- | --- |
| Request | [`AccountListParams`](././lib/straddle/models/account_list_params.rb) |
| Response | [`AccountList`](././lib/straddle/models/account_list.rb) |

```ruby
response = client.accounts.list({ page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

### Onboard an account

Starts onboarding and records the account's acceptance of Straddle's Terms of Service. The account must have at least one representative and one linked bank account. This operation also moves all associated representatives and linked bank accounts to `onboarding`.

| Direction | Type |
| --- | --- |
| Request | [`AccountOnboardParams`](././lib/straddle/models/account_onboard_params.rb) |
| Response | [`AccountResponse`](././lib/straddle/models/account_response.rb) |

```ruby
response = client.accounts.onboard("7c9e6679-7425-40de-944b-e07fc1f90ae7", { terms_of_service: { "accepted_date" => "2024-01-01T00:00:00.000Z", "agreement_url" => "", "agreement_type" => "embedded" } })

puts response.inspect
```

### Simulate status transitions for a sandbox account

Simulates an account status transition to `onboarding` or `active` in the sandbox and returns the account.

| Direction | Type |
| --- | --- |
| Request | [`AccountSimulateOnboardingParams`](././lib/straddle/models/account_simulate_onboarding_params.rb) |
| Response | [`AccountResponse`](././lib/straddle/models/account_response.rb) |

```ruby
response = client.accounts.simulate_onboarding("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

## `CapabilityRequests`

Capability requests change the payment, customer, and consent types available to an account.

### Create capability requests

Creates one or more capability requests for an account and returns the resulting requests.

| Direction | Type |
| --- | --- |
| Request | [`CapabilityRequestCreateParams`](././lib/straddle/models/capability_request_create_params.rb) |
| Response | [`CapabilityRequestList`](././lib/straddle/models/capability_request_list.rb) |

```ruby
response = client.capability_requests.create("7c9e6679-7425-40de-944b-e07fc1f90ae7", { businesses: { "enable" => false }, charges: { "enable" => false, "max_amount" => 0, "daily_amount" => 0, "monthly_count" => 0, "monthly_amount" => 0 }, individuals: { "enable" => false }, internet: { "enable" => false }, payouts: { "enable" => false, "max_amount" => 0, "daily_amount" => 0, "monthly_count" => 0, "monthly_amount" => 0 }, signed_agreement: { "enable" => false } })

puts response.inspect
```

### List capability requests

Returns a paginated list of capability requests for an account. Filter the list by capability type, category, or status.

| Direction | Type |
| --- | --- |
| Request | [`CapabilityRequestListParams`](././lib/straddle/models/capability_request_list_params.rb) |
| Response | [`CapabilityRequestList`](././lib/straddle/models/capability_request_list.rb) |

```ruby
response = client.capability_requests.list("7c9e6679-7425-40de-944b-e07fc1f90ae7", { page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

## `LinkedBankAccounts`

Linked bank accounts connect external bank accounts to an account or platform for charges, payouts, or billing.

### Create a linked bank account

Creates a linked bank account for an account or platform, assigns its payment purposes, and returns the linked bank account.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountCreateParams`](././lib/straddle/models/linked_bank_account_create_params.rb) |
| Response | [`LinkedBankAccountResponse`](././lib/straddle/models/linked_bank_account_response.rb) |

```ruby
response = client.linked_bank_accounts.create({ bank_account: { "account_holder" => "", "routing_number" => "xxxxxxxxx", "account_number" => "" }, account_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", description: "", metadata: {  }, platform_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", purposes: [] })

puts response.inspect
```

### List linked bank accounts

Returns a paginated list of linked bank accounts. Filter the list by account, scope, purpose, or status.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountListParams`](././lib/straddle/models/linked_bank_account_list_params.rb) |
| Response | [`LinkedBankAccountList`](././lib/straddle/models/linked_bank_account_list.rb) |

```ruby
response = client.linked_bank_accounts.list({ page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

### Update a linked bank account

Updates bank account details and metadata, then returns the linked bank account. The linked bank account must have status `created`, or status `onboarding` with `status_detail.reason` set to `stuck`.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountUpdateParams`](././lib/straddle/models/linked_bank_account_update_params.rb) |
| Response | [`LinkedBankAccountResponse`](././lib/straddle/models/linked_bank_account_response.rb) |

```ruby
response = client.linked_bank_accounts.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { bank_account: { "account_holder" => "", "routing_number" => "xxxxxxxxx", "account_number" => "" }, metadata: {  } })

puts response.inspect
```

### Get a linked bank account

Returns the linked bank account with the specified ID. The response masks the account number.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountRetrieveParams`](././lib/straddle/models/linked_bank_account_retrieve_params.rb) |
| Response | [`LinkedBankAccountResponse`](././lib/straddle/models/linked_bank_account_response.rb) |

```ruby
response = client.linked_bank_accounts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Get an unmasked linked bank account

Returns the linked bank account with the specified ID without masking its account number. This endpoint is available only when Straddle enables data unmasking for the account.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountListUnmaskedParams`](././lib/straddle/models/linked_bank_account_list_unmasked_params.rb) |
| Response | [`UnmaskedLinkedBankAccountResponse`](././lib/straddle/models/unmasked_linked_bank_account_response.rb) |

```ruby
response = client.linked_bank_accounts.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Cancel a linked bank account

Cancels a linked bank account and returns it with status `canceled`. The linked bank account must have status `created`.

| Direction | Type |
| --- | --- |
| Request | [`LinkedBankAccountCancelParams`](././lib/straddle/models/linked_bank_account_cancel_params.rb) |
| Response | [`LinkedBankAccountResponse`](././lib/straddle/models/linked_bank_account_response.rb) |

```ruby
response = client.linked_bank_accounts.cancel("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

## `Organizations`

Organizations group related Straddle accounts.

### Create an organization

Creates an organization for your platform and returns it. Organizations group related accounts and users.

| Direction | Type |
| --- | --- |
| Request | [`OrganizationCreateParams`](././lib/straddle/models/organization_create_params.rb) |
| Response | [`OrganizationResponse`](././lib/straddle/models/organization_response.rb) |

```ruby
response = client.organizations.create({ name: "", external_id: "", metadata: {  } })

puts response.inspect
```

### List organizations

Returns a paginated list of organizations for your platform. Filter the list by name or external ID.

| Direction | Type |
| --- | --- |
| Request | [`OrganizationListParams`](././lib/straddle/models/organization_list_params.rb) |
| Response | [`OrganizationList`](././lib/straddle/models/organization_list.rb) |

```ruby
response = client.organizations.list({ page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

### Get an organization

Returns the organization with the specified ID.

| Direction | Type |
| --- | --- |
| Request | [`OrganizationRetrieveParams`](././lib/straddle/models/organization_retrieve_params.rb) |
| Response | [`OrganizationResponse`](././lib/straddle/models/organization_response.rb) |

```ruby
response = client.organizations.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

## `Representatives`

Representatives are people associated with a business account for ownership, control, or authorization purposes.

### Create a representative

Creates a representative for an account and returns the representative. Relationship fields identify primary representatives, control persons, and owners.

| Direction | Type |
| --- | --- |
| Request | [`RepresentativeCreateParams`](././lib/straddle/models/representative_create_params.rb) |
| Response | [`RepresentativeResponse`](././lib/straddle/models/representative_response.rb) |

```ruby
response = client.representatives.create({ account_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", dob: "1980-01-01", email: "ron.swanson@pawnee.com", first_name: "", last_name: "", mobile_number: "+12128675309", relationship: { "primary" => false, "control" => false, "owner" => false }, ssn_last4: "1234", external_id: "", metadata: {  } })

puts response.inspect
```

### List representatives

Returns a paginated list of representatives. Filter the list by account, organization, platform, or scope.

| Direction | Type |
| --- | --- |
| Request | [`RepresentativeListParams`](././lib/straddle/models/representative_list_params.rb) |
| Response | [`RepresentativeList`](././lib/straddle/models/representative_list.rb) |

```ruby
response = client.representatives.list({ page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

### Update a representative

Updates a representative's personal, contact, relationship, external ID, and metadata fields, then returns the representative.

| Direction | Type |
| --- | --- |
| Request | [`RepresentativeUpdateParams`](././lib/straddle/models/representative_update_params.rb) |
| Response | [`RepresentativeResponse`](././lib/straddle/models/representative_response.rb) |

```ruby
response = client.representatives.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { dob: "1980-01-01", email: "ron.swanson@pawnee.com", first_name: "Ron", last_name: "Swanson", mobile_number: "+12128675309", relationship: { "primary" => false, "control" => false, "owner" => false }, ssn_last4: "1234", external_id: "", metadata: {  } })

puts response.inspect
```

### Get a representative

Returns the representative with the specified ID.

| Direction | Type |
| --- | --- |
| Request | [`RepresentativeRetrieveParams`](././lib/straddle/models/representative_retrieve_params.rb) |
| Response | [`RepresentativeResponse`](././lib/straddle/models/representative_response.rb) |

```ruby
response = client.representatives.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Get an unmasked representative

Returns the representative with the specified ID without masking sensitive fields. This endpoint requires an administrator role.

| Direction | Type |
| --- | --- |
| Request | [`RepresentativeListUnmaskedParams`](././lib/straddle/models/representative_list_unmasked_params.rb) |
| Response | [`UnmaskedRepresentativeResponse`](././lib/straddle/models/unmasked_representative_response.rb) |

```ruby
response = client.representatives.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

## `Bridge`

Bridge connects customer bank accounts and creates paykeys from supported provider tokens or bank account details.

### Create a paykey from bank account details

Creates a paykey from a routing number, account number, and account type.

| Direction | Type |
| --- | --- |
| Request | [`BridgeCreateBankAccountPaykeyParams`](././lib/straddle/models/bridge_create_bank_account_paykey_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.bridge.create_bank_account_paykey({ account_number: "", account_type: "checking", customer_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", routing_number: "xxxxxxxxx", config: {  }, external_id: "", metadata: {  } })

puts response.inspect
```

### Create a paykey from a Plaid token

Creates a paykey from a Plaid processor token.

| Direction | Type |
| --- | --- |
| Request | [`BridgeCreatePlaidPaykeyParams`](././lib/straddle/models/bridge_create_plaid_paykey_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.bridge.create_plaid_paykey({ customer_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", plaid_token: "", config: {  }, external_id: "", metadata: {  } })

puts response.inspect
```

### Create a Bridge widget session token

Creates a session token for the Bridge widget.

| Direction | Type |
| --- | --- |
| Request | [`BridgeCreateTokenParams`](././lib/straddle/models/bridge_create_token_params.rb) |
| Response | [`BridgeTokenResponse`](././lib/straddle/models/bridge_token_response.rb) |

```ruby
response = client.bridge.create_token({ customer_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", config: {  }, external_id: "" })

puts response.inspect
```

### Create a paykey from a Quiltt token

Creates a paykey from a Quiltt processor token.

| Direction | Type |
| --- | --- |
| Request | [`BridgeCreateQuilttPaykeyParams`](././lib/straddle/models/bridge_create_quiltt_paykey_params.rb) |
| Response | [`RevealedPaykeyResponse`](././lib/straddle/models/revealed_paykey_response.rb) |

```ruby
response = client.bridge.create_quiltt_paykey({ customer_id: "7c9e6679-7425-40de-944b-e07fc1f90ae7", quiltt_token: "", config: {  }, external_id: "", metadata: {  } })

puts response.inspect
```

## `Customers`

Customers are individuals or businesses that send or receive payments through your integration.

### Get a customer

Returns a customer by `id`.

| Direction | Type |
| --- | --- |
| Request | [`CustomerRetrieveParams`](././lib/straddle/models/customer_retrieve_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Update a customer

Updates an existing customer's profile, status, and metadata.

| Direction | Type |
| --- | --- |
| Request | [`CustomerUpdateParams`](././lib/straddle/models/customer_update_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { device: { "ip_address" => "192.168.1.1" }, email: "user@example.com", name: "", phone: "", status: "verified", address: { "address1" => "123 Main St", "city" => "Anytown", "state" => "CA", "zip" => "12345" }, compliance_profile: StringIO.new("smoke-test"), external_id: "", metadata: {  } })

puts response.inspect
```

### Delete a customer

Permanently deletes a customer record. The deletion cannot be undone. Use this endpoint only to meet regulatory or privacy requirements.

| Direction | Type |
| --- | --- |
| Request | [`CustomerDeleteParams`](././lib/straddle/models/customer_delete_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.delete("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### List customers

Returns a paginated list of customers for the account. Optional query parameters filter, search, and sort the results.

| Direction | Type |
| --- | --- |
| Request | [`CustomerListParams`](././lib/straddle/models/customer_list_params.rb) |
| Response | [`CustomerSummaryList`](././lib/straddle/models/customer_summary_list.rb) |

```ruby
response = client.customers.list({ page_number: 1, page_size: 100, sort_order: "asc" })

puts response.inspect
```

### Create a customer

Creates a customer and starts identity, fraud, and risk assessments.

| Direction | Type |
| --- | --- |
| Request | [`CustomerCreateParams`](././lib/straddle/models/customer_create_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.create({ device: { "ip_address" => "192.168.1.1" }, email: "ron.swanson@pawnee.com", name: "Ron Swanson", phone: "+12128675309", type: "individual", address: { "address1" => "123 Main St", "city" => "Anytown", "state" => "CA", "zip" => "94105" }, compliance_profile: StringIO.new("smoke-test"), config: {  }, external_id: "customer_123", metadata: {  } })

puts response.inspect
```

### Get an unmasked customer

Returns unmasked details for a customer, including personally identifiable information. Straddle must enable this endpoint for your account. Use this endpoint only when unmasked data is necessary.

| Direction | Type |
| --- | --- |
| Request | [`CustomerListUnmaskedParams`](././lib/straddle/models/customer_list_unmasked_params.rb) |
| Response | [`UnmaskedCustomerResponse`](././lib/straddle/models/unmasked_customer_response.rb) |

```ruby
response = client.customers.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Refresh a customer review

Starts a new identity review for a customer. The review runs asynchronously. Webhooks and the customer review endpoint return updated results.

| Direction | Type |
| --- | --- |
| Request | [`CustomerRefreshReviewParams`](././lib/straddle/models/customer_refresh_review_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.refresh_review("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### `Customers Review`

Customers are individuals or businesses that send or receive payments through your integration.

#### Get a customer review

Returns the results of a customer's identity and fraud review. The response includes decisions, risk and correlation scores, reason codes, watchlist matches, and network alerts.

| Direction | Type |
| --- | --- |
| Request | [`ReviewListParams`](././lib/straddle/models/customers/review_list_params.rb) |
| Response | [`Customers::CustomerReviewResponse`](././lib/straddle/models/customers/customer_review_response.rb) |

```ruby
response = client.customers.review.list("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

#### Set a customer verification decision

Updates the verification decision for a customer. The customer's current `status` must be `review`.

| Direction | Type |
| --- | --- |
| Request | [`ReviewSetVerificationDecisionParams`](././lib/straddle/models/customers/review_set_verification_decision_params.rb) |
| Response | [`CustomerResponse`](././lib/straddle/models/customer_response.rb) |

```ruby
response = client.customers.review.set_verification_decision("7c9e6679-7425-40de-944b-e07fc1f90ae7", { status: "verified" })

puts response.inspect
```

## `Paykeys`

A paykey links a verified customer to a bank account without exposing bank account details. Use a paykey to create charges and payouts.

### Get a paykey

Returns a paykey by `id`, including the masked paykey value and bank account details.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyRetrieveParams`](././lib/straddle/models/paykey_retrieve_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Get an unmasked paykey

Returns a paykey by `id`, including the full paykey value and unmasked bank account details. Straddle must enable this endpoint for your account. Use this endpoint only when unmasked data is necessary.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyListUnmaskedParams`](././lib/straddle/models/paykey_list_unmasked_params.rb) |
| Response | [`UnmaskedPaykeyResponse`](././lib/straddle/models/unmasked_paykey_response.rb) |

```ruby
response = client.paykeys.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### List paykeys

Returns a paginated list of paykeys for the account. Optional query parameters filter, search, and sort the results.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyListParams`](././lib/straddle/models/paykey_list_params.rb) |
| Response | [`PaykeySummaryList`](././lib/straddle/models/paykey_summary_list.rb) |

```ruby
response = client.paykeys.list({ page_number: 1, page_size: 100, sort_order: "asc" })

puts response.inspect
```

### Reveal a paykey token

Returns a paykey by `id`, including the full paykey value and masked bank account details.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyRevealParams`](././lib/straddle/models/paykey_reveal_params.rb) |
| Response | [`RevealedPaykeyResponse`](././lib/straddle/models/revealed_paykey_response.rb) |

```ruby
response = client.paykeys.reveal("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Cancel a paykey

Cancels a paykey so it cannot be used for new payments.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyCancelParams`](././lib/straddle/models/paykey_cancel_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.cancel("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Refresh a paykey review

Starts a new verification review for a paykey. The review runs asynchronously. Webhooks and the paykey review endpoint return updated results.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyRefreshReviewParams`](././lib/straddle/models/paykey_refresh_review_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.refresh_review("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Refresh a paykey balance

Starts an asynchronous balance refresh for a paykey. The response returns the paykey before the refresh finishes.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyRefreshBalanceParams`](././lib/straddle/models/paykey_refresh_balance_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.refresh_balance("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Unblock a paykey

Unblocks a paykey that was blocked by an `R29` return. The paykey must not have been unblocked before.

| Direction | Type |
| --- | --- |
| Request | [`PaykeyUnblockParams`](././lib/straddle/models/paykey_unblock_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.unblock("7c9e6679-7425-40de-944b-e07fc1f90ae7", { message: "" })

puts response.inspect
```

### `Paykeys Review`

A paykey links a verified customer to a bank account without exposing bank account details. Use a paykey to create charges and payouts.

#### Set a paykey verification decision

Updates the verification decision for a paykey. The paykey's current `status` must be `review`.

| Direction | Type |
| --- | --- |
| Request | [`ReviewSetVerificationDecisionParams`](././lib/straddle/models/paykeys/review_set_verification_decision_params.rb) |
| Response | [`PaykeyResponse`](././lib/straddle/models/paykey_response.rb) |

```ruby
response = client.paykeys.review.set_verification_decision("7c9e6679-7425-40de-944b-e07fc1f90ae7", { status: "active" })

puts response.inspect
```

#### Get a paykey review

Returns a paykey verification review, including the decision, score breakdowns, and result codes.

| Direction | Type |
| --- | --- |
| Request | [`ReviewListParams`](././lib/straddle/models/paykeys/review_list_params.rb) |
| Response | [`Paykeys::PaykeyReviewResponse`](././lib/straddle/models/paykeys/paykey_review_response.rb) |

```ruby
response = client.paykeys.review.list("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

## `Charges`

Charges debit a customer's bank account through a paykey.

### Get a charge

Returns a charge by its unique identifier.

| Direction | Type |
| --- | --- |
| Request | [`ChargeRetrieveParams`](././lib/straddle/models/charge_retrieve_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Update a charge

Updates the description, amount, `payment_date`, or metadata. The charge must have a status of `created` or `on_hold`.

| Direction | Type |
| --- | --- |
| Request | [`ChargeUpdateParams`](././lib/straddle/models/charge_update_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { amount: 10000, description: "Monthly subscription fee", payment_date: "2024-01-01", metadata: {  } })

puts response.inspect
```

### Create a charge

Creates a charge against a customer's paykey. Straddle submits the charge for processing on `payment_date` unless the charge is on hold.

| Direction | Type |
| --- | --- |
| Request | [`ChargeCreateParams`](././lib/straddle/models/charge_create_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.create({ amount: 10000, config: { "balance_check" => "enabled" }, consent_type: "internet", currency: "USD", description: "Monthly subscription fee", device: { "ip_address" => "192.168.1.1" }, external_id: "", paykey: "", payment_date: "2024-01-01", metadata: {  } })

puts response.inspect
```

### Hold a charge

Places a charge on hold to prevent submission for processing. The charge must have a status of `created` or `scheduled`.

| Direction | Type |
| --- | --- |
| Request | [`ChargeHoldParams`](././lib/straddle/models/charge_hold_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.hold("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Release a charge

Releases a charge from `on_hold` and returns it to `created` for submission on `payment_date`.

| Direction | Type |
| --- | --- |
| Request | [`ChargeReleaseParams`](././lib/straddle/models/charge_release_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.release("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Cancel a charge

Cancels a charge. The charge must have a status of `created`, `scheduled`, or `on_hold`.

| Direction | Type |
| --- | --- |
| Request | [`ChargeCancelParams`](././lib/straddle/models/charge_cancel_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.cancel("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Get an unmasked charge

Return a charge with its sensitive fields unmasked.

| Direction | Type |
| --- | --- |
| Request | [`ChargeListUnmaskedParams`](././lib/straddle/models/charge_list_unmasked_params.rb) |
| Response | [`UnmaskedChargeResponse`](././lib/straddle/models/unmasked_charge_response.rb) |

```ruby
response = client.charges.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Resubmit a charge

Creates a new charge from a failed, reversed, or cancelled charge. The request can override `description`, `external_id`, and `payment_date`. Other payment details come from the original charge.

| Direction | Type |
| --- | --- |
| Request | [`ChargeResubmitParams`](././lib/straddle/models/charge_resubmit_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.resubmit("7c9e6679-7425-40de-944b-e07fc1f90ae7", { description: "", external_id: "", payment_date: "2024-01-01" })

puts response.inspect
```

### Refund a paid charge

Creates a payout to return funds from a paid charge to the customer's bank account. The payout is linked to the charge through `related_payments`. A charge can be refunded once, either fully or partially.

| Direction | Type |
| --- | --- |
| Request | [`ChargeRefundParams`](././lib/straddle/models/charge_refund_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.charges.refund("7c9e6679-7425-40de-944b-e07fc1f90ae7", { amount: 5000, description: "", external_id: "", metadata: {  }, payment_date: "2024-01-01" })

puts response.inspect
```

### Upload a proof-of-authorization document for a charge

Uploads a proof-of-authorization document for a charge. A later upload adds another document and does not replace an existing one.

| Direction | Type |
| --- | --- |
| Request | [`ChargeUploadAuthorizationProofParams`](././lib/straddle/models/charge_upload_authorization_proof_params.rb) |
| Response | [`ChargeResponse`](././lib/straddle/models/charge_response.rb) |

```ruby
response = client.charges.upload_authorization_proof("7c9e6679-7425-40de-944b-e07fc1f90ae7", { file: "" })

puts response.inspect
```

## `FundingEvents`

Funding events group charge and payout activity into transfers between Straddle and your linked bank account.

### List funding events

Returns a paginated list of funding events that match the specified filters.

| Direction | Type |
| --- | --- |
| Request | [`FundingEventListParams`](././lib/straddle/models/funding_event_list_params.rb) |
| Response | [`FundingEventSummaryList`](././lib/straddle/models/funding_event_summary_list.rb) |

```ruby
response = client.funding_events.list({ page_number: 1, page_size: 100, sort_order: "asc" })

puts response.inspect
```

### Get a funding event

Returns a funding event by its unique identifier, including its current status, status history, and linked bank account details when available.

| Direction | Type |
| --- | --- |
| Request | [`FundingEventRetrieveParams`](././lib/straddle/models/funding_event_retrieve_params.rb) |
| Response | [`FundingEventResponse`](././lib/straddle/models/funding_event_response.rb) |

```ruby
response = client.funding_events.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Simulate a funding event

Creates a funding event for unfunded charge or payout activity in the sandbox and returns its ID. This endpoint is unavailable in production.

| Direction | Type |
| --- | --- |
| Request | [`FundingEventSimulateParams`](././lib/straddle/models/funding_event_simulate_params.rb) |
| Response | [`FundingEventSimulation`](././lib/straddle/models/funding_event_simulation.rb) |

```ruby
response = client.funding_events.simulate({ funding_event_job_type: "charges", sandbox_outcome: "standard" })

puts response.inspect
```

### List funding event payments

Returns a paginated list of payments included in the funding event.

| Direction | Type |
| --- | --- |
| Request | [`FundingEventListPaymentsParams`](././lib/straddle/models/funding_event_list_payments_params.rb) |
| Response | [`FundingEventPaymentList`](././lib/straddle/models/funding_event_payment_list.rb) |

```ruby
response = client.funding_events.list_payments("7c9e6679-7425-40de-944b-e07fc1f90ae7", { default_sort_order: "asc", sort_order: "asc" })

puts response.inspect
```

## `Payments`

Payments provide a combined view of charges and payouts.

### List payments

Returns a paged list of charges and payouts that match the filters.

| Direction | Type |
| --- | --- |
| Request | [`PaymentListParams`](././lib/straddle/models/payment_list_params.rb) |
| Response | [`PaymentSummaryList`](././lib/straddle/models/payment_summary_list.rb) |

```ruby
response = client.payments.list({ default_sort: "id", default_sort_order: "asc", page_number: 1, page_size: 100, sort_by: "id", sort_order: "asc" })

puts response.inspect
```

## `Payouts`

Payouts send money to a customer's bank account through a paykey.

### Get a payout

Returns a payout by its unique identifier.

| Direction | Type |
| --- | --- |
| Request | [`PayoutRetrieveParams`](././lib/straddle/models/payout_retrieve_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Update a payout

Updates the description, amount, `payment_date`, or metadata. The payout must have a status of `created` or `on_hold`.

| Direction | Type |
| --- | --- |
| Request | [`PayoutUpdateParams`](././lib/straddle/models/payout_update_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.update("7c9e6679-7425-40de-944b-e07fc1f90ae7", { amount: 10000, description: "", payment_date: "2024-01-01", metadata: {  } })

puts response.inspect
```

### Create a payout

Creates a payout to a customer's bank account. Straddle submits the payout for processing on `payment_date` unless the payout is on hold.

| Direction | Type |
| --- | --- |
| Request | [`PayoutCreateParams`](././lib/straddle/models/payout_create_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.create({ amount: 10000, currency: "USD", description: "Vendor invoice payment", device: { "ip_address" => "192.168.1.1" }, external_id: "", paykey: "", payment_date: "2024-01-01", config: {  }, metadata: {  } })

puts response.inspect
```

### Hold a payout

Places a payout on hold to prevent submission for processing. The payout must have a status of `created` or `scheduled`.

| Direction | Type |
| --- | --- |
| Request | [`PayoutHoldParams`](././lib/straddle/models/payout_hold_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.hold("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Release a payout

Releases a payout from `on_hold` and returns it to `created` for submission on `payment_date`.

| Direction | Type |
| --- | --- |
| Request | [`PayoutReleaseParams`](././lib/straddle/models/payout_release_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.release("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Cancel a payout

Cancels a payout. The payout must have a status of `created`, `scheduled`, or `on_hold`.

| Direction | Type |
| --- | --- |
| Request | [`PayoutCancelParams`](././lib/straddle/models/payout_cancel_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.cancel("7c9e6679-7425-40de-944b-e07fc1f90ae7", { reason: "" })

puts response.inspect
```

### Get an unmasked payout

Return a payout with its sensitive fields unmasked.

| Direction | Type |
| --- | --- |
| Request | [`PayoutListUnmaskedParams`](././lib/straddle/models/payout_list_unmasked_params.rb) |
| Response | [`UnmaskedPayoutResponse`](././lib/straddle/models/unmasked_payout_response.rb) |

```ruby
response = client.payouts.list_unmasked("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```

### Resubmit a payout

Creates a new payout from a failed, reversed, or cancelled payout. The request can override `description`, `external_id`, and `payment_date`. Other payment details come from the original payout.

| Direction | Type |
| --- | --- |
| Request | [`PayoutResubmitParams`](././lib/straddle/models/payout_resubmit_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.resubmit("7c9e6679-7425-40de-944b-e07fc1f90ae7", { description: "", external_id: "", payment_date: "2024-01-01" })

puts response.inspect
```

### Upload a proof-of-authorization document for a payout

Uploads a proof-of-authorization document for a payout. A later upload adds another document and does not replace an existing one.

| Direction | Type |
| --- | --- |
| Request | [`PayoutUploadAuthorizationProofParams`](././lib/straddle/models/payout_upload_authorization_proof_params.rb) |
| Response | [`PayoutResponse`](././lib/straddle/models/payout_response.rb) |

```ruby
response = client.payouts.upload_authorization_proof("7c9e6679-7425-40de-944b-e07fc1f90ae7", { file: "" })

puts response.inspect
```

## `AccountSettings`

Account settings define payment limits, capabilities, statement details, and policy controls for an account.

### Get account settings

Returns all effective settings for the account, including values inherited from its organization, platform, and system defaults.

| Direction | Type |
| --- | --- |
| Request | [`AccountSettingRetrieveParams`](././lib/straddle/models/account_setting_retrieve_params.rb) |
| Response | [`AccountSettingsResponse`](././lib/straddle/models/account_settings_response.rb) |

```ruby
response = client.account_settings.retrieve("7c9e6679-7425-40de-944b-e07fc1f90ae7")

puts response.inspect
```
