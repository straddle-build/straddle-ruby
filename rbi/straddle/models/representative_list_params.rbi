# typed: strong

module Straddle
  module Models
    class RepresentativeListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::RepresentativeListParams, Straddle::Internal::AnyHash)
        end

      # Account ID used to filter the results.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Scope of representatives to return.
      sig do
        returns(T.nilable(Straddle::RepresentativeListParams::Level::OrSymbol))
      end
      attr_reader :level

      sig do
        params(level: Straddle::RepresentativeListParams::Level::OrSymbol).void
      end
      attr_writer :level

      # Organization ID used to filter the results.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

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

      # Platform ID used to filter the results.
      sig { returns(T.nilable(String)) }
      attr_reader :platform_id

      sig { params(platform_id: String).void }
      attr_writer :platform_id

      # Field used to sort results. Defaults to `id`.
      sig { returns(T.nilable(String)) }
      attr_reader :sort_by

      sig { params(sort_by: String).void }
      attr_writer :sort_by

      # Sort direction. Defaults to `asc`.
      sig do
        returns(
          T.nilable(Straddle::RepresentativeListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::RepresentativeListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

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
          level: Straddle::RepresentativeListParams::Level::OrSymbol,
          organization_id: String,
          page_number: Integer,
          page_size: Integer,
          platform_id: String,
          sort_by: String,
          sort_order: Straddle::RepresentativeListParams::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID used to filter the results.
        account_id: nil,
        # Scope of representatives to return.
        level: nil,
        # Organization ID used to filter the results.
        organization_id: nil,
        # Page number. Defaults to `1`.
        page_number: nil,
        # Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Platform ID used to filter the results.
        platform_id: nil,
        # Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Sort direction. Defaults to `asc`.
        sort_order: nil,
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
            level: Straddle::RepresentativeListParams::Level::OrSymbol,
            organization_id: String,
            page_number: Integer,
            page_size: Integer,
            platform_id: String,
            sort_by: String,
            sort_order: Straddle::RepresentativeListParams::SortOrder::OrSymbol,
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
            T.all(Symbol, Straddle::RepresentativeListParams::Level)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNT =
          T.let(
            :account,
            Straddle::RepresentativeListParams::Level::TaggedSymbol
          )
        PLATFORM =
          T.let(
            :platform,
            Straddle::RepresentativeListParams::Level::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::RepresentativeListParams::Level::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module SortOrder
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::RepresentativeListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            Straddle::RepresentativeListParams::SortOrder::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            Straddle::RepresentativeListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::RepresentativeListParams::SortOrder::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
