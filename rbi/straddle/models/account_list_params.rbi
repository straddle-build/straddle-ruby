# typed: strong

module Straddle
  module Models
    class AccountListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::AccountListParams, Straddle::Internal::AnyHash)
        end

      # Your external ID for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

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

      # Text to search for across account fields.
      sig { returns(T.nilable(String)) }
      attr_reader :search_text

      sig { params(search_text: String).void }
      attr_writer :search_text

      # Field used to sort results. Defaults to `id`.
      sig { returns(T.nilable(String)) }
      attr_reader :sort_by

      sig { params(sort_by: String).void }
      attr_writer :sort_by

      # Sort direction. Defaults to `asc`.
      sig do
        returns(T.nilable(Straddle::AccountListParams::SortOrder::OrSymbol))
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::AccountListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Account status to return.
      sig { returns(T.nilable(Straddle::AccountListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Straddle::AccountListParams::Status::OrSymbol).void }
      attr_writer :status

      # Account type to return.
      sig { returns(T.nilable(Straddle::AccountListParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Straddle::AccountListParams::Type::OrSymbol).void }
      attr_writer :type

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
          external_id: String,
          page_number: Integer,
          page_size: Integer,
          search_text: String,
          sort_by: String,
          sort_order: Straddle::AccountListParams::SortOrder::OrSymbol,
          status: Straddle::AccountListParams::Status::OrSymbol,
          type: Straddle::AccountListParams::Type::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Your external ID for the account.
        external_id: nil,
        # Page number. Defaults to `1`.
        page_number: nil,
        # Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Text to search for across account fields.
        search_text: nil,
        # Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Account status to return.
        status: nil,
        # Account type to return.
        type: nil,
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
            external_id: String,
            page_number: Integer,
            page_size: Integer,
            search_text: String,
            sort_by: String,
            sort_order: Straddle::AccountListParams::SortOrder::OrSymbol,
            status: Straddle::AccountListParams::Status::OrSymbol,
            type: Straddle::AccountListParams::Type::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::AccountListParams::SortOrder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Straddle::AccountListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(:desc, Straddle::AccountListParams::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::AccountListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(:created, Straddle::AccountListParams::Status::TaggedSymbol)
        ONBOARDING =
          T.let(:onboarding, Straddle::AccountListParams::Status::TaggedSymbol)
        ACTIVE =
          T.let(:active, Straddle::AccountListParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Straddle::AccountListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, Straddle::AccountListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::AccountListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(:business, Straddle::AccountListParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
