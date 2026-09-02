# typed: strong

module Straddle
  module Models
    class CapabilityRequestListParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::CapabilityRequestListParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Capability category to return.
      sig do
        returns(
          T.nilable(Straddle::CapabilityRequestListParams::Category::OrSymbol)
        )
      end
      attr_reader :category

      sig do
        params(
          category: Straddle::CapabilityRequestListParams::Category::OrSymbol
        ).void
      end
      attr_writer :category

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
          T.nilable(Straddle::CapabilityRequestListParams::SortOrder::OrSymbol)
        )
      end
      attr_reader :sort_order

      sig do
        params(
          sort_order: Straddle::CapabilityRequestListParams::SortOrder::OrSymbol
        ).void
      end
      attr_writer :sort_order

      # Capability request status to return.
      sig do
        returns(
          T.nilable(Straddle::CapabilityRequestListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Straddle::CapabilityRequestListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Capability type to return.
      sig do
        returns(
          T.nilable(Straddle::CapabilityRequestListParams::Type::OrSymbol)
        )
      end
      attr_reader :type

      sig do
        params(type: Straddle::CapabilityRequestListParams::Type::OrSymbol).void
      end
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
          account_id: String,
          category: Straddle::CapabilityRequestListParams::Category::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort_by: String,
          sort_order:
            Straddle::CapabilityRequestListParams::SortOrder::OrSymbol,
          status: Straddle::CapabilityRequestListParams::Status::OrSymbol,
          type: Straddle::CapabilityRequestListParams::Type::OrSymbol,
          correlation_id: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # Capability category to return.
        category: nil,
        # Page number. Defaults to `1`.
        page_number: nil,
        # Number of results per page. Defaults to `100`. Maximum `1000`.
        page_size: nil,
        # Field used to sort results. Defaults to `id`.
        sort_by: nil,
        # Sort direction. Defaults to `asc`.
        sort_order: nil,
        # Capability request status to return.
        status: nil,
        # Capability type to return.
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
            account_id: String,
            category: Straddle::CapabilityRequestListParams::Category::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort_by: String,
            sort_order:
              Straddle::CapabilityRequestListParams::SortOrder::OrSymbol,
            status: Straddle::CapabilityRequestListParams::Status::OrSymbol,
            type: Straddle::CapabilityRequestListParams::Type::OrSymbol,
            correlation_id: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Category
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::CapabilityRequestListParams::Category)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_TYPE =
          T.let(
            :payment_type,
            Straddle::CapabilityRequestListParams::Category::TaggedSymbol
          )
        CUSTOMER_TYPE =
          T.let(
            :customer_type,
            Straddle::CapabilityRequestListParams::Category::TaggedSymbol
          )
        CONSENT_TYPE =
          T.let(
            :consent_type,
            Straddle::CapabilityRequestListParams::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::CapabilityRequestListParams::Category::TaggedSymbol
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
            T.all(Symbol, Straddle::CapabilityRequestListParams::SortOrder)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            Straddle::CapabilityRequestListParams::SortOrder::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            Straddle::CapabilityRequestListParams::SortOrder::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::CapabilityRequestListParams::SortOrder::TaggedSymbol
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
            T.all(Symbol, Straddle::CapabilityRequestListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Straddle::CapabilityRequestListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::CapabilityRequestListParams::Status::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            Straddle::CapabilityRequestListParams::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Straddle::CapabilityRequestListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::CapabilityRequestListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::CapabilityRequestListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHARGES =
          T.let(
            :charges,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )
        PAYOUTS =
          T.let(
            :payouts,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )
        INDIVIDUALS =
          T.let(
            :individuals,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )
        BUSINESSES =
          T.let(
            :businesses,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )
        SIGNED_AGREEMENT =
          T.let(
            :signed_agreement,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )
        INTERNET =
          T.let(
            :internet,
            Straddle::CapabilityRequestListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::CapabilityRequestListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
