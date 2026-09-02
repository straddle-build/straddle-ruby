# typed: strong

module Straddle
  module Models
    module Customers
      class ReviewListParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::ReviewListParams,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

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
            id: String,
            correlation_id: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
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
              id: String,
              correlation_id: String,
              request_id: String,
              straddle_account_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
