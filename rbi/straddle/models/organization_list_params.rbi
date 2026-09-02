# typed: strong

module Straddle
  module Models
    class OrganizationListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::OrganizationListParams, Straddle::Internal::AnyHash)
        end

      # Your external ID for the organization.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Organization name. Supports partial matches.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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

      # Field used to sort results. Defaults to `id`.
      sig { returns(T.nilable(String)) }
      attr_reader :sort_by

      sig { params(sort_by: String).void }
      attr_writer :sort_by

      # Sort direction. Defaults to `asc`.
      sig do
        returns(
          T.nilable(Straddle::OrganizationListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::OrganizationListParams::SortOrder::OrSymbol
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
          external_id: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order: Straddle::OrganizationListParams::SortOrder::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Your external ID for the organization.
        external_id: nil,
        # Organization name. Supports partial matches.
        name: nil,
        # Page number. Defaults to `1`.
        page_number: nil,
        # Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
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
            external_id: String,
            name: String,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order: Straddle::OrganizationListParams::SortOrder::OrSymbol,
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
          T.type_alias do
            T.all(Symbol, Straddle::OrganizationListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, Straddle::OrganizationListParams::SortOrder::TaggedSymbol)
        DESC =
          T.let(
            :desc,
            Straddle::OrganizationListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::OrganizationListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
