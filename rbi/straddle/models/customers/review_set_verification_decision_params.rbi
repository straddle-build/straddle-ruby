# typed: strong

module Straddle
  module Models
    module Customers
      class ReviewSetVerificationDecisionParams < Straddle::Internal::Type::BaseModel
        extend Straddle::Internal::Type::RequestParameters::Converter
        include Straddle::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::ReviewSetVerificationDecisionParams,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The final status of the customer review.
        sig do
          returns(
            Straddle::Customers::ReviewSetVerificationDecisionParams::Status::OrSymbol
          )
        end
        attr_accessor :status

        # Optional client-generated identifier for tracing a series of related requests.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # Optional client-generated key for an idempotent request.
        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

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
            status:
              Straddle::Customers::ReviewSetVerificationDecisionParams::Status::OrSymbol,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            straddle_account_id: String,
            request_options: Straddle::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The final status of the customer review.
          status:,
          # Optional client-generated identifier for tracing a series of related requests.
          correlation_id: nil,
          # Optional client-generated key for an idempotent request.
          idempotency_key: nil,
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
              status:
                Straddle::Customers::ReviewSetVerificationDecisionParams::Status::OrSymbol,
              correlation_id: String,
              idempotency_key: String,
              request_id: String,
              straddle_account_id: String,
              request_options: Straddle::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The final status of the customer review.
        module Status
          extend Straddle::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Straddle::Customers::ReviewSetVerificationDecisionParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFIED =
            T.let(
              :verified,
              Straddle::Customers::ReviewSetVerificationDecisionParams::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Straddle::Customers::ReviewSetVerificationDecisionParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Straddle::Customers::ReviewSetVerificationDecisionParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
