# frozen_string_literal: true

module Straddle
  [Straddle::Internal::Type::BaseModel, *Straddle::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Straddle::Internal::AnyHash) } }
  end

  Straddle::Internal::Util
    .walk_namespaces(Straddle::Models)
    .each do |mod|
      case mod
      in Straddle::Internal::Type::Enum | Straddle::Internal::Type::Union
        mod.constants.each do |name|
          case mod.const_get(name)
          in true | false
            mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
            mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
          in Integer
            mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
            mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
          in Float
            mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
            mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
          in Symbol
            mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
            mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
          else
          end
        end
      else
      end
    end

  Straddle::Internal::Util
    .walk_namespaces(Straddle::Models)
    .lazy
    .grep(Straddle::Internal::Type::Union)
    .each do |mod|
      const = :Variants
      next if mod.sorbet_constant_defined?(const)

      mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
    end

  Account = Straddle::Models::Account

  AccountAddress = Straddle::Models::AccountAddress

  AccountBusinessProfile = Straddle::Models::AccountBusinessProfile

  AccountCapabilities = Straddle::Models::AccountCapabilities

  AccountCapability = Straddle::Models::AccountCapability

  AccountChargeSettings = Straddle::Models::AccountChargeSettings

  AccountConsentCapabilities = Straddle::Models::AccountConsentCapabilities

  AccountConsentSettings = Straddle::Models::AccountConsentSettings

  AccountCreatedV1WebhookEvent = Straddle::Models::AccountCreatedV1WebhookEvent

  AccountCreateParams = Straddle::Models::AccountCreateParams

  AccountCustomerCapabilities = Straddle::Models::AccountCustomerCapabilities

  AccountCustomerTypeSettings = Straddle::Models::AccountCustomerTypeSettings

  AccountEventV1WebhookEvent = Straddle::Models::AccountEventV1WebhookEvent

  AccountIndustry = Straddle::Models::AccountIndustry

  AccountList = Straddle::Models::AccountList

  AccountListParams = Straddle::Models::AccountListParams

  AccountOnboardParams = Straddle::Models::AccountOnboardParams

  AccountPaymentCapabilities = Straddle::Models::AccountPaymentCapabilities

  AccountPaymentSettings = Straddle::Models::AccountPaymentSettings

  AccountPaymentTypeSettings = Straddle::Models::AccountPaymentTypeSettings

  AccountPayoutSettings = Straddle::Models::AccountPayoutSettings

  AccountPolicyControls = Straddle::Models::AccountPolicyControls

  AccountResponse = Straddle::Models::AccountResponse

  AccountRetrieveParams = Straddle::Models::AccountRetrieveParams

  AccountSettingRetrieveParams = Straddle::Models::AccountSettingRetrieveParams

  AccountSettingsAPI = Straddle::Models::AccountSettingsAPI

  AccountSettingsResponse = Straddle::Models::AccountSettingsResponse

  AccountSimulateOnboardingParams = Straddle::Models::AccountSimulateOnboardingParams

  AccountStatementSettings = Straddle::Models::AccountStatementSettings

  AccountStatusDetail = Straddle::Models::AccountStatusDetail

  AccountSupportChannels = Straddle::Models::AccountSupportChannels

  AccountType = Straddle::Models::AccountType

  AccountUpdateParams = Straddle::Models::AccountUpdateParams

  BalanceCheckMode = Straddle::Models::BalanceCheckMode

  BridgeCreateBankAccountPaykeyParams = Straddle::Models::BridgeCreateBankAccountPaykeyParams

  BridgeCreatePlaidPaykeyParams = Straddle::Models::BridgeCreatePlaidPaykeyParams

  BridgeCreateQuilttPaykeyParams = Straddle::Models::BridgeCreateQuilttPaykeyParams

  BridgeCreateTokenParams = Straddle::Models::BridgeCreateTokenParams

  BridgeToken = Straddle::Models::BridgeToken

  BridgeTokenResponse = Straddle::Models::BridgeTokenResponse

  BusinessCustomerRepresentative = Straddle::Models::BusinessCustomerRepresentative

  CapabilityRequest = Straddle::Models::CapabilityRequest

  CapabilityRequestCreatedV1WebhookEvent = Straddle::Models::CapabilityRequestCreatedV1WebhookEvent

  CapabilityRequestCreateParams = Straddle::Models::CapabilityRequestCreateParams

  CapabilityRequestEventV1WebhookEvent = Straddle::Models::CapabilityRequestEventV1WebhookEvent

  CapabilityRequestList = Straddle::Models::CapabilityRequestList

  CapabilityRequestListParams = Straddle::Models::CapabilityRequestListParams

  Charge = Straddle::Models::Charge

  ChargeCancelParams = Straddle::Models::ChargeCancelParams

  ChargeConfiguration = Straddle::Models::ChargeConfiguration

  ChargeCreatedV1WebhookEvent = Straddle::Models::ChargeCreatedV1WebhookEvent

  ChargeCreateParams = Straddle::Models::ChargeCreateParams

  ChargeEventV1WebhookEvent = Straddle::Models::ChargeEventV1WebhookEvent

  ChargeHoldParams = Straddle::Models::ChargeHoldParams

  ChargeListUnmaskedParams = Straddle::Models::ChargeListUnmaskedParams

  ChargeRefundParams = Straddle::Models::ChargeRefundParams

  ChargeReleaseParams = Straddle::Models::ChargeReleaseParams

  ChargeResponse = Straddle::Models::ChargeResponse

  ChargeResubmitParams = Straddle::Models::ChargeResubmitParams

  ChargeRetrieveParams = Straddle::Models::ChargeRetrieveParams

  ChargeSettings = Straddle::Models::ChargeSettings

  ChargeUpdateParams = Straddle::Models::ChargeUpdateParams

  ChargeUploadAuthorizationProofParams = Straddle::Models::ChargeUploadAuthorizationProofParams

  ComplianceProfile = Straddle::Models::ComplianceProfile

  ConsentType = Straddle::Models::ConsentType

  Customer = Straddle::Models::Customer

  CustomerAddress = Straddle::Models::CustomerAddress

  CustomerConfiguration = Straddle::Models::CustomerConfiguration

  CustomerCreatedV1WebhookEvent = Straddle::Models::CustomerCreatedV1WebhookEvent

  CustomerCreateParams = Straddle::Models::CustomerCreateParams

  CustomerDeleteParams = Straddle::Models::CustomerDeleteParams

  CustomerDetails = Straddle::Models::CustomerDetails

  CustomerDevice = Straddle::Models::CustomerDevice

  CustomerEventV1WebhookEvent = Straddle::Models::CustomerEventV1WebhookEvent

  CustomerListParams = Straddle::Models::CustomerListParams

  CustomerListUnmaskedParams = Straddle::Models::CustomerListUnmaskedParams

  CustomerRefreshReviewParams = Straddle::Models::CustomerRefreshReviewParams

  CustomerResponse = Straddle::Models::CustomerResponse

  CustomerRetrieveParams = Straddle::Models::CustomerRetrieveParams

  Customers = Straddle::Models::Customers

  CustomerStatus = Straddle::Models::CustomerStatus

  CustomerSummary = Straddle::Models::CustomerSummary

  CustomerSummaryList = Straddle::Models::CustomerSummaryList

  CustomerType = Straddle::Models::CustomerType

  CustomerUpdateParams = Straddle::Models::CustomerUpdateParams

  FundingEvent = Straddle::Models::FundingEvent

  FundingEventConfiguration = Straddle::Models::FundingEventConfiguration

  FundingEventCreatedV1WebhookEvent = Straddle::Models::FundingEventCreatedV1WebhookEvent

  FundingEventEventV1WebhookEvent = Straddle::Models::FundingEventEventV1WebhookEvent

  FundingEventListParams = Straddle::Models::FundingEventListParams

  FundingEventListPaymentsParams = Straddle::Models::FundingEventListPaymentsParams

  FundingEventPayment = Straddle::Models::FundingEventPayment

  FundingEventPaymentList = Straddle::Models::FundingEventPaymentList

  FundingEventPaymentReason = Straddle::Models::FundingEventPaymentReason

  FundingEventResponse = Straddle::Models::FundingEventResponse

  FundingEventRetrieveParams = Straddle::Models::FundingEventRetrieveParams

  FundingEventSimulateParams = Straddle::Models::FundingEventSimulateParams

  FundingEventSimulation = Straddle::Models::FundingEventSimulation

  FundingEventSimulationResult = Straddle::Models::FundingEventSimulationResult

  FundingEventSummary = Straddle::Models::FundingEventSummary

  FundingEventSummaryList = Straddle::Models::FundingEventSummaryList

  FundingEventTransferDirection = Straddle::Models::FundingEventTransferDirection

  FundingEventType = Straddle::Models::FundingEventType

  LinkedBankAccount = Straddle::Models::LinkedBankAccount

  LinkedBankAccountCancelParams = Straddle::Models::LinkedBankAccountCancelParams

  LinkedBankAccountCreatedV1WebhookEvent = Straddle::Models::LinkedBankAccountCreatedV1WebhookEvent

  LinkedBankAccountCreateParams = Straddle::Models::LinkedBankAccountCreateParams

  LinkedBankAccountEventV1WebhookEvent = Straddle::Models::LinkedBankAccountEventV1WebhookEvent

  LinkedBankAccountList = Straddle::Models::LinkedBankAccountList

  LinkedBankAccountListParams = Straddle::Models::LinkedBankAccountListParams

  LinkedBankAccountListUnmaskedParams = Straddle::Models::LinkedBankAccountListUnmaskedParams

  LinkedBankAccountResponse = Straddle::Models::LinkedBankAccountResponse

  LinkedBankAccountRetrieveParams = Straddle::Models::LinkedBankAccountRetrieveParams

  LinkedBankAccountStatusDetail = Straddle::Models::LinkedBankAccountStatusDetail

  LinkedBankAccountUpdateParams = Straddle::Models::LinkedBankAccountUpdateParams

  MaskedCustomerDevice = Straddle::Models::MaskedCustomerDevice

  MaskedLinkedBankAccountDetails = Straddle::Models::MaskedLinkedBankAccountDetails

  MaskedPaymentDevice = Straddle::Models::MaskedPaymentDevice

  Organization = Straddle::Models::Organization

  OrganizationCreateParams = Straddle::Models::OrganizationCreateParams

  OrganizationList = Straddle::Models::OrganizationList

  OrganizationListParams = Straddle::Models::OrganizationListParams

  OrganizationResponse = Straddle::Models::OrganizationResponse

  OrganizationRetrieveParams = Straddle::Models::OrganizationRetrieveParams

  PageMetadata = Straddle::Models::PageMetadata

  Paykey = Straddle::Models::Paykey

  PaykeyBalanceDetails = Straddle::Models::PaykeyBalanceDetails

  PaykeyBalanceRefreshStatus = Straddle::Models::PaykeyBalanceRefreshStatus

  PaykeyBankDetails = Straddle::Models::PaykeyBankDetails

  PaykeyCancelParams = Straddle::Models::PaykeyCancelParams

  PaykeyConfiguration = Straddle::Models::PaykeyConfiguration

  PaykeyCreatedV1WebhookEvent = Straddle::Models::PaykeyCreatedV1WebhookEvent

  PaykeyDetails = Straddle::Models::PaykeyDetails

  PaykeyEventV1WebhookEvent = Straddle::Models::PaykeyEventV1WebhookEvent

  PaykeyListParams = Straddle::Models::PaykeyListParams

  PaykeyListUnmaskedParams = Straddle::Models::PaykeyListUnmaskedParams

  PaykeyProcessingMode = Straddle::Models::PaykeyProcessingMode

  PaykeyRefreshBalanceParams = Straddle::Models::PaykeyRefreshBalanceParams

  PaykeyRefreshReviewParams = Straddle::Models::PaykeyRefreshReviewParams

  PaykeyResponse = Straddle::Models::PaykeyResponse

  PaykeyRetrieveParams = Straddle::Models::PaykeyRetrieveParams

  PaykeyRevealParams = Straddle::Models::PaykeyRevealParams

  Paykeys = Straddle::Models::Paykeys

  PaykeySource = Straddle::Models::PaykeySource

  PaykeyStatus = Straddle::Models::PaykeyStatus

  PaykeySummary = Straddle::Models::PaykeySummary

  PaykeySummaryList = Straddle::Models::PaykeySummaryList

  PaykeyUnblockParams = Straddle::Models::PaykeyUnblockParams

  PaymentAuthorizationProof = Straddle::Models::PaymentAuthorizationProof

  PaymentDevice = Straddle::Models::PaymentDevice

  PaymentDocumentType = Straddle::Models::PaymentDocumentType

  PaymentListParams = Straddle::Models::PaymentListParams

  PaymentRail = Straddle::Models::PaymentRail

  PaymentRelationship = Straddle::Models::PaymentRelationship

  PaymentStatus = Straddle::Models::PaymentStatus

  PaymentStatusDetails = Straddle::Models::PaymentStatusDetails

  PaymentStatusHistory = Straddle::Models::PaymentStatusHistory

  PaymentStatusReason = Straddle::Models::PaymentStatusReason

  PaymentStatusSource = Straddle::Models::PaymentStatusSource

  PaymentSummary = Straddle::Models::PaymentSummary

  PaymentSummaryList = Straddle::Models::PaymentSummaryList

  PaymentType = Straddle::Models::PaymentType

  Payout = Straddle::Models::Payout

  PayoutCancelParams = Straddle::Models::PayoutCancelParams

  PayoutConfiguration = Straddle::Models::PayoutConfiguration

  PayoutCreatedV1WebhookEvent = Straddle::Models::PayoutCreatedV1WebhookEvent

  PayoutCreateParams = Straddle::Models::PayoutCreateParams

  PayoutEventV1WebhookEvent = Straddle::Models::PayoutEventV1WebhookEvent

  PayoutHoldParams = Straddle::Models::PayoutHoldParams

  PayoutListUnmaskedParams = Straddle::Models::PayoutListUnmaskedParams

  PayoutReleaseParams = Straddle::Models::PayoutReleaseParams

  PayoutResponse = Straddle::Models::PayoutResponse

  PayoutResubmitParams = Straddle::Models::PayoutResubmitParams

  PayoutRetrieveParams = Straddle::Models::PayoutRetrieveParams

  PayoutSettings = Straddle::Models::PayoutSettings

  PayoutUpdateParams = Straddle::Models::PayoutUpdateParams

  PayoutUploadAuthorizationProofParams = Straddle::Models::PayoutUploadAuthorizationProofParams

  PlatformCreatedV1WebhookEvent = Straddle::Models::PlatformCreatedV1WebhookEvent

  PlatformEventV1WebhookEvent = Straddle::Models::PlatformEventV1WebhookEvent

  RelatedPayment = Straddle::Models::RelatedPayment

  Representative = Straddle::Models::Representative

  RepresentativeCreatedV1WebhookEvent = Straddle::Models::RepresentativeCreatedV1WebhookEvent

  RepresentativeCreateParams = Straddle::Models::RepresentativeCreateParams

  RepresentativeEventV1WebhookEvent = Straddle::Models::RepresentativeEventV1WebhookEvent

  RepresentativeList = Straddle::Models::RepresentativeList

  RepresentativeListParams = Straddle::Models::RepresentativeListParams

  RepresentativeListUnmaskedParams = Straddle::Models::RepresentativeListUnmaskedParams

  RepresentativeRelationship = Straddle::Models::RepresentativeRelationship

  RepresentativeResponse = Straddle::Models::RepresentativeResponse

  RepresentativeRetrieveParams = Straddle::Models::RepresentativeRetrieveParams

  RepresentativeStatusDetail = Straddle::Models::RepresentativeStatusDetail

  RepresentativeUpdateParams = Straddle::Models::RepresentativeUpdateParams

  ResponseMetadata = Straddle::Models::ResponseMetadata

  ResponseType = Straddle::Models::ResponseType

  RevealedPaykey = Straddle::Models::RevealedPaykey

  RevealedPaykeyResponse = Straddle::Models::RevealedPaykeyResponse

  SimulatedCustomerOutcome = Straddle::Models::SimulatedCustomerOutcome

  SimulatedPaykeyOutcome = Straddle::Models::SimulatedPaykeyOutcome

  SimulatedPaymentOutcome = Straddle::Models::SimulatedPaymentOutcome

  SortOrder = Straddle::Models::SortOrder

  TermsOfService = Straddle::Models::TermsOfService

  TransferDirection = Straddle::Models::TransferDirection

  UnmaskedCharge = Straddle::Models::UnmaskedCharge

  UnmaskedChargeResponse = Straddle::Models::UnmaskedChargeResponse

  UnmaskedComplianceProfile = Straddle::Models::UnmaskedComplianceProfile

  UnmaskedCustomer = Straddle::Models::UnmaskedCustomer

  UnmaskedCustomerResponse = Straddle::Models::UnmaskedCustomerResponse

  UnmaskedLinkedBankAccount = Straddle::Models::UnmaskedLinkedBankAccount

  UnmaskedLinkedBankAccountDetails = Straddle::Models::UnmaskedLinkedBankAccountDetails

  UnmaskedLinkedBankAccountResponse = Straddle::Models::UnmaskedLinkedBankAccountResponse

  UnmaskedPaykey = Straddle::Models::UnmaskedPaykey

  UnmaskedPaykeyBankDetails = Straddle::Models::UnmaskedPaykeyBankDetails

  UnmaskedPaykeyResponse = Straddle::Models::UnmaskedPaykeyResponse

  UnmaskedPayout = Straddle::Models::UnmaskedPayout

  UnmaskedPayoutResponse = Straddle::Models::UnmaskedPayoutResponse

  UnmaskedRepresentative = Straddle::Models::UnmaskedRepresentative

  UnmaskedRepresentativeResponse = Straddle::Models::UnmaskedRepresentativeResponse

  UnwrapWebhookEvent = Straddle::Models::UnwrapWebhookEvent

  UserCreatedV1WebhookEvent = Straddle::Models::UserCreatedV1WebhookEvent

  UserEventV1WebhookEvent = Straddle::Models::UserEventV1WebhookEvent

  WebhookUnwrapParams = Straddle::Models::WebhookUnwrapParams
end
