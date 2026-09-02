# typed: strong

module Straddle
  module Models
    class PaymentListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::PaymentListParams, Straddle::Internal::AnyHash)
        end

      # Filter by the unique identifier of the customer.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Default number of results returned per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :default_page_size

      sig { params(default_page_size: Integer).void }
      attr_writer :default_page_size

      # Default field used to sort the results.
      sig do
        returns(T.nilable(Straddle::PaymentListParams::DefaultSort::OrSymbol))
      end
      attr_reader :default_sort

      sig do
        params(
          default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol
        ).void
      end
      attr_writer :default_sort

      # Default order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :default_sort_order

      sig { params(default_sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :default_sort_order

      # Filter by your external identifier for the payment.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Filter by the unique identifier of a funding event.
      sig { returns(T.nilable(String)) }
      attr_reader :funding_id

      sig { params(funding_id: String).void }
      attr_writer :funding_id

      # Filter charges by whether an associated payout has refunded them.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_refund

      sig { params(has_refund: T::Boolean).void }
      attr_writer :has_refund

      # Filter payments by whether they have been resubmitted.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_resubmit

      sig { params(has_resubmit: T::Boolean).void }
      attr_writer :has_resubmit

      # Whether to include metadata in each returned payment. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_metadata

      sig { params(include_metadata: T::Boolean).void }
      attr_writer :include_metadata

      # Filter payouts by whether they refund an original charge.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_refund

      sig { params(is_refund: T::Boolean).void }
      attr_writer :is_refund

      # Filter payments by whether they resubmit an original payment.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_resubmit

      sig { params(is_resubmit: T::Boolean).void }
      attr_writer :is_resubmit

      # Filter to payments with an amount in cents less than or equal to this value.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_amount

      sig { params(max_amount: Integer).void }
      attr_writer :max_amount

      # Filter to payments created at or before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :max_created_at

      sig { params(max_created_at: Time).void }
      attr_writer :max_created_at

      # Filter to payments effective at or before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :max_effective_at

      sig { params(max_effective_at: Time).void }
      attr_writer :max_effective_at

      # Filter to payments with a payment date on or before this date.
      sig { returns(T.nilable(Date)) }
      attr_reader :max_payment_date

      sig { params(max_payment_date: Date).void }
      attr_writer :max_payment_date

      # Filter to payments last updated on or before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :max_updated_at

      sig { params(max_updated_at: Time).void }
      attr_writer :max_updated_at

      # Filter to payments with an amount in cents greater than or equal to this value.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_amount

      sig { params(min_amount: Integer).void }
      attr_writer :min_amount

      # Filter to payments created at or after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :min_created_at

      sig { params(min_created_at: Time).void }
      attr_writer :min_created_at

      # Filter to payments effective at or after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :min_effective_at

      sig { params(min_effective_at: Time).void }
      attr_writer :min_effective_at

      # Filter to payments with a payment date on or after this date.
      sig { returns(T.nilable(Date)) }
      attr_reader :min_payment_date

      sig { params(min_payment_date: Date).void }
      attr_writer :min_payment_date

      # Filter to payments last updated on or after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :min_updated_at

      sig { params(min_updated_at: Time).void }
      attr_writer :min_updated_at

      # Page number to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results to return per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by the paykey token.
      sig { returns(T.nilable(String)) }
      attr_reader :paykey

      sig { params(paykey: String).void }
      attr_writer :paykey

      # Filter by the unique identifier of the paykey.
      sig { returns(T.nilable(String)) }
      attr_reader :paykey_id

      sig { params(paykey_id: String).void }
      attr_writer :paykey_id

      # Filter by the payment's unique identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_id

      sig { params(payment_id: String).void }
      attr_writer :payment_id

      # Filter by payment status.
      sig { returns(T.nilable(T::Array[Straddle::PaymentStatus::OrSymbol])) }
      attr_reader :payment_status

      sig do
        params(payment_status: T::Array[Straddle::PaymentStatus::OrSymbol]).void
      end
      attr_writer :payment_status

      # Filter by payment type.
      sig { returns(T.nilable(T::Array[Straddle::PaymentType::OrSymbol])) }
      attr_reader :payment_type

      sig do
        params(payment_type: T::Array[Straddle::PaymentType::OrSymbol]).void
      end
      attr_writer :payment_type

      # Free-text search across payment fields.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      # Field used to sort the results.
      sig { returns(T.nilable(Straddle::PaymentListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::PaymentListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      # Order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :sort_order

      sig { params(sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :sort_order

      # Filter by the reason for the most recent payment status change.
      sig do
        returns(T.nilable(T::Array[Straddle::PaymentStatusReason::OrSymbol]))
      end
      attr_reader :status_reason

      sig do
        params(
          status_reason: T::Array[Straddle::PaymentStatusReason::OrSymbol]
        ).void
      end
      attr_writer :status_reason

      # Filter by the source of the most recent payment status change.
      sig do
        returns(T.nilable(T::Array[Straddle::PaymentStatusSource::OrSymbol]))
      end
      attr_reader :status_source

      sig do
        params(
          status_source: T::Array[Straddle::PaymentStatusSource::OrSymbol]
        ).void
      end
      attr_writer :status_source

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # For platform requests, the embedded account UUID that sets the request scope.
      sig { returns(T.nilable(String)) }
      attr_reader :straddle_account_id

      sig { params(straddle_account_id: String).void }
      attr_writer :straddle_account_id

      sig do
        params(
          customer_id: String,
          default_page_size: Integer,
          default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol,
          default_sort_order: Straddle::SortOrder::OrSymbol,
          external_id: String,
          funding_id: String,
          has_refund: T::Boolean,
          has_resubmit: T::Boolean,
          include_metadata: T::Boolean,
          is_refund: T::Boolean,
          is_resubmit: T::Boolean,
          max_amount: Integer,
          max_created_at: Time,
          max_effective_at: Time,
          max_payment_date: Date,
          max_updated_at: Time,
          min_amount: Integer,
          min_created_at: Time,
          min_effective_at: Time,
          min_payment_date: Date,
          min_updated_at: Time,
          page_number: Integer,
          page_size: Integer,
          paykey: String,
          paykey_id: String,
          payment_id: String,
          payment_status: T::Array[Straddle::PaymentStatus::OrSymbol],
          payment_type: T::Array[Straddle::PaymentType::OrSymbol],
          search_text: String,
          sort_by: Straddle::PaymentListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          status_reason: T::Array[Straddle::PaymentStatusReason::OrSymbol],
          status_source: T::Array[Straddle::PaymentStatusSource::OrSymbol],
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by the unique identifier of the customer.
        customer_id: nil,
        # Default number of results returned per page.
        default_page_size: nil,
        # Default field used to sort the results.
        default_sort: nil,
        # Default order in which to sort the results.
        default_sort_order: nil,
        # Filter by your external identifier for the payment.
        external_id: nil,
        # Filter by the unique identifier of a funding event.
        funding_id: nil,
        # Filter charges by whether an associated payout has refunded them.
        has_refund: nil,
        # Filter payments by whether they have been resubmitted.
        has_resubmit: nil,
        # Whether to include metadata in each returned payment. Defaults to false.
        include_metadata: nil,
        # Filter payouts by whether they refund an original charge.
        is_refund: nil,
        # Filter payments by whether they resubmit an original payment.
        is_resubmit: nil,
        # Filter to payments with an amount in cents less than or equal to this value.
        max_amount: nil,
        # Filter to payments created at or before this timestamp.
        max_created_at: nil,
        # Filter to payments effective at or before this timestamp.
        max_effective_at: nil,
        # Filter to payments with a payment date on or before this date.
        max_payment_date: nil,
        # Filter to payments last updated on or before this timestamp.
        max_updated_at: nil,
        # Filter to payments with an amount in cents greater than or equal to this value.
        min_amount: nil,
        # Filter to payments created at or after this timestamp.
        min_created_at: nil,
        # Filter to payments effective at or after this timestamp.
        min_effective_at: nil,
        # Filter to payments with a payment date on or after this date.
        min_payment_date: nil,
        # Filter to payments last updated on or after this timestamp.
        min_updated_at: nil,
        # Page number to return.
        page_number: nil,
        # Number of results to return per page.
        page_size: nil,
        # Filter by the paykey token.
        paykey: nil,
        # Filter by the unique identifier of the paykey.
        paykey_id: nil,
        # Filter by the payment's unique identifier.
        payment_id: nil,
        # Filter by payment status.
        payment_status: nil,
        # Filter by payment type.
        payment_type: nil,
        # Free-text search across payment fields.
        search_text: nil,
        # Field used to sort the results.
        sort_by: nil,
        # Order in which to sort the results.
        sort_order: nil,
        # Filter by the reason for the most recent payment status change.
        status_reason: nil,
        # Filter by the source of the most recent payment status change.
        status_source: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        # For platform requests, the embedded account UUID that sets the request scope.
        straddle_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            default_page_size: Integer,
            default_sort: Straddle::PaymentListParams::DefaultSort::OrSymbol,
            default_sort_order: Straddle::SortOrder::OrSymbol,
            external_id: String,
            funding_id: String,
            has_refund: T::Boolean,
            has_resubmit: T::Boolean,
            include_metadata: T::Boolean,
            is_refund: T::Boolean,
            is_resubmit: T::Boolean,
            max_amount: Integer,
            max_created_at: Time,
            max_effective_at: Time,
            max_payment_date: Date,
            max_updated_at: Time,
            min_amount: Integer,
            min_created_at: Time,
            min_effective_at: Time,
            min_payment_date: Date,
            min_updated_at: Time,
            page_number: Integer,
            page_size: Integer,
            paykey: String,
            paykey_id: String,
            payment_id: String,
            payment_status: T::Array[Straddle::PaymentStatus::OrSymbol],
            payment_type: T::Array[Straddle::PaymentType::OrSymbol],
            search_text: String,
            sort_by: Straddle::PaymentListParams::SortBy::OrSymbol,
            sort_order: Straddle::SortOrder::OrSymbol,
            status_reason: T::Array[Straddle::PaymentStatusReason::OrSymbol],
            status_source: T::Array[Straddle::PaymentStatusSource::OrSymbol],
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module DefaultSort
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::PaymentListParams::DefaultSort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )
        ID = T.let(:id, Straddle::PaymentListParams::DefaultSort::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::PaymentListParams::DefaultSort::TaggedSymbol)
        UPDATED_AT =
          T.let(
            :updated_at,
            Straddle::PaymentListParams::DefaultSort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::DefaultSort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::PaymentListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Straddle::PaymentListParams::SortBy::TaggedSymbol)
        PAYMENT_DATE =
          T.let(
            :payment_date,
            Straddle::PaymentListParams::SortBy::TaggedSymbol
          )
        EFFECTIVE_AT =
          T.let(
            :effective_at,
            Straddle::PaymentListParams::SortBy::TaggedSymbol
          )
        ID = T.let(:id, Straddle::PaymentListParams::SortBy::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::PaymentListParams::SortBy::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, Straddle::PaymentListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::PaymentListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
