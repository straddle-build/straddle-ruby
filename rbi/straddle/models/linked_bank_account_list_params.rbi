# typed: strong

module Straddle
  module Models
    class LinkedBankAccountListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::LinkedBankAccountListParams,
            Straddle::Internal::AnyHash
          )
        end

      # Account ID used to filter the results.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Scope of linked bank accounts to return.
      sig do
        returns(
          T.nilable(Straddle::LinkedBankAccountListParams::Level::OrSymbol)
        )
      end
      attr_reader :level

      sig do
        params(
          level: Straddle::LinkedBankAccountListParams::Level::OrSymbol
        ).void
      end
      attr_writer :level

      # Page number. Defaults to `1`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page. Defaults to `100`. Maximum `1000`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Linked bank account purpose. Accepted values are `charges`, `payouts`, and
      # `billing`.
      sig do
        returns(
          T.nilable(Straddle::LinkedBankAccountListParams::Purpose::OrSymbol)
        )
      end
      attr_reader :purpose

      sig do
        params(
          purpose: Straddle::LinkedBankAccountListParams::Purpose::OrSymbol
        ).void
      end
      attr_writer :purpose

      # Field used to sort results. Defaults to `id`.
      sig { returns(T.nilable(String)) }
      attr_reader :sort_by

      sig { params(sort_by: String).void }
      attr_writer :sort_by

      # Sort direction. Defaults to `asc`.
      sig do
        returns(
          T.nilable(Straddle::LinkedBankAccountListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::LinkedBankAccountListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Linked bank account status. Accepted values are `created`, `onboarding`,
      # `active`, `rejected`, `inactive`, and `canceled`.
      sig do
        returns(
          T.nilable(Straddle::LinkedBankAccountListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Straddle::LinkedBankAccountListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

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

      sig do
        params(
          account_id: String,
          level: Straddle::LinkedBankAccountListParams::Level::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          purpose: Straddle::LinkedBankAccountListParams::Purpose::OrSymbol,
          sort_by: String,
          sort_order:
            Straddle::LinkedBankAccountListParams::SortOrder::OrSymbol,
          status: Straddle::LinkedBankAccountListParams::Status::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID used to filter the results.
        account_id: nil,
        # Scope of linked bank accounts to return.
        level: nil,
        # Page number. Defaults to `1`.
        page_number: nil,
        # Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Linked bank account purpose. Accepted values are `charges`, `payouts`, and
        # `billing`.
        purpose: nil,
        # Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Linked bank account status. Accepted values are `created`, `onboarding`,
        # `active`, `rejected`, `inactive`, and `canceled`.
        status: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            level: Straddle::LinkedBankAccountListParams::Level::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            purpose: Straddle::LinkedBankAccountListParams::Purpose::OrSymbol,
            sort_by: String,
            sort_order:
              Straddle::LinkedBankAccountListParams::SortOrder::OrSymbol,
            status: Straddle::LinkedBankAccountListParams::Status::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Level
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountListParams::Level)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT =
          T.let(
            :account,
            Straddle::LinkedBankAccountListParams::Level::TaggedSymbol
          )
        PLATFORM =
          T.let(
            :platform,
            Straddle::LinkedBankAccountListParams::Level::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::LinkedBankAccountListParams::Level::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Purpose
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountListParams::Purpose)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(
            :charges,
            Straddle::LinkedBankAccountListParams::Purpose::TaggedSymbol
          )
        PAYOUTS =
          T.let(
            :payouts,
            Straddle::LinkedBankAccountListParams::Purpose::TaggedSymbol
          )
        BILLING =
          T.let(
            :billing,
            Straddle::LinkedBankAccountListParams::Purpose::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountListParams::Purpose::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            Straddle::LinkedBankAccountListParams::SortOrder::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            Straddle::LinkedBankAccountListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountListParams::SortOrder::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )
        ONBOARDING =
          T.let(
            :onboarding,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
