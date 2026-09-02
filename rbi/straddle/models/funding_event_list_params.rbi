# typed: strong

module Straddle
  module Models
    class FundingEventListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::FundingEventListParams, Straddle::Internal::AnyHash)
        end

      # Filter to funding events created on or after this date.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_from

      # Filter to funding events created on or before this date.
      sig { returns(T.nilable(Date)) }
      attr_accessor :created_to

      # Filter by transfer direction relative to the linked bank account.
      sig { returns(T.nilable(Straddle::TransferDirection::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: Straddle::TransferDirection::OrSymbol).void }
      attr_writer :direction

      # Filter by funding event type.
      sig { returns(T.nilable(Straddle::FundingEventType::OrSymbol)) }
      attr_reader :event_type

      sig { params(event_type: Straddle::FundingEventType::OrSymbol).void }
      attr_writer :event_type

      # Results page number. Starts at page 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Results page size. Max value: 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Free-text search across funding event fields.
      sig { returns(T.nilable(String)) }
      attr_accessor :search_text

      # Field used to sort the results.
      sig do
        returns(T.nilable(Straddle::FundingEventListParams::SortBy::OrSymbol))
      end
      attr_reader :sort_by

      sig do
        params(sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol).void
      end
      attr_writer :sort_by

      # Order in which to sort the results.
      sig { returns(T.nilable(Straddle::SortOrder::OrSymbol)) }
      attr_reader :sort_order

      sig { params(sort_order: Straddle::SortOrder::OrSymbol).void }
      attr_writer :sort_order

      # Filter by funding event status.
      sig { returns(T.nilable(T::Array[Straddle::PaymentStatus::OrSymbol])) }
      attr_accessor :status

      # Filter by the reason for the most recent status change.
      sig do
        returns(T.nilable(T::Array[Straddle::PaymentStatusReason::OrSymbol]))
      end
      attr_accessor :status_reason

      # Filter by the source of the most recent status change.
      sig do
        returns(T.nilable(T::Array[Straddle::PaymentStatusSource::OrSymbol]))
      end
      attr_accessor :status_source

      # Filter by a network-level trace identifier assigned during processing.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_id

      # Filter by a network trace number assigned during processing.
      sig { returns(T.nilable(String)) }
      attr_accessor :trace_number

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
          created_from: T.nilable(Date),
          created_to: T.nilable(Date),
          direction: Straddle::TransferDirection::OrSymbol,
          event_type: Straddle::FundingEventType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          search_text: T.nilable(String),
          sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
          sort_order: Straddle::SortOrder::OrSymbol,
          status: T.nilable(T::Array[Straddle::PaymentStatus::OrSymbol]),
          status_reason:
            T.nilable(T::Array[Straddle::PaymentStatusReason::OrSymbol]),
          status_source:
            T.nilable(T::Array[Straddle::PaymentStatusSource::OrSymbol]),
          trace_id: T.nilable(String),
          trace_number: T.nilable(String),
          correlation_id: String,
          request_id: String,
          straddle_account_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter to funding events created on or after this date.
        created_from: nil,
        # Filter to funding events created on or before this date.
        created_to: nil,
        # Filter by transfer direction relative to the linked bank account.
        direction: nil,
        # Filter by funding event type.
        event_type: nil,
        # Results page number. Starts at page 1.
        page_number: nil,
        # Results page size. Max value: 1000.
        page_size: nil,
        # Free-text search across funding event fields.
        search_text: nil,
        # Field used to sort the results.
        sort_by: nil,
        # Order in which to sort the results.
        sort_order: nil,
        # Filter by funding event status.
        status: nil,
        # Filter by the reason for the most recent status change.
        status_reason: nil,
        # Filter by the source of the most recent status change.
        status_source: nil,
        # Filter by a network-level trace identifier assigned during processing.
        trace_id: nil,
        # Filter by a network trace number assigned during processing.
        trace_number: nil,
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
            created_from: T.nilable(Date),
            created_to: T.nilable(Date),
            direction: Straddle::TransferDirection::OrSymbol,
            event_type: Straddle::FundingEventType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            search_text: T.nilable(String),
            sort_by: Straddle::FundingEventListParams::SortBy::OrSymbol,
            sort_order: Straddle::SortOrder::OrSymbol,
            status: T.nilable(T::Array[Straddle::PaymentStatus::OrSymbol]),
            status_reason:
              T.nilable(T::Array[Straddle::PaymentStatusReason::OrSymbol]),
            status_source:
              T.nilable(T::Array[Straddle::PaymentStatusSource::OrSymbol]),
            trace_id: T.nilable(String),
            trace_number: T.nilable(String),
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SortBy
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::FundingEventListParams::SortBy)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER_DATE =
          T.let(
            :transfer_date,
            Straddle::FundingEventListParams::SortBy::TaggedSymbol
          )
        ID = T.let(:id, Straddle::FundingEventListParams::SortBy::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Straddle::FundingEventListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::FundingEventListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
