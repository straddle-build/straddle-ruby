# typed: strong

module Straddle
  module Models
    class RepresentativeUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::RepresentativeUpdateParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :representative_id

      # Representative's date of birth in `YYYY-MM-DD` format.
      sig { returns(Date) }
      attr_accessor :dob

      # Representative's email address.
      sig { returns(String) }
      attr_accessor :email

      # Representative's first name.
      sig { returns(String) }
      attr_accessor :first_name

      # Representative's last name.
      sig { returns(String) }
      attr_accessor :last_name

      # Representative's mobile phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :mobile_number

      sig { returns(Straddle::RepresentativeRelationship) }
      attr_reader :relationship

      sig do
        params(relationship: Straddle::RepresentativeRelationship::OrHash).void
      end
      attr_writer :relationship

      # Last four digits of the representative's Social Security number.
      sig { returns(String) }
      attr_accessor :ssn_last4

      # Your unique ID for the representative.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

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

      sig do
        params(
          representative_id: String,
          dob: Date,
          email: String,
          first_name: String,
          last_name: String,
          mobile_number: String,
          relationship: Straddle::RepresentativeRelationship::OrHash,
          ssn_last4: String,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        representative_id:,
        # Representative's date of birth in `YYYY-MM-DD` format.
        dob:,
        # Representative's email address.
        email:,
        # Representative's first name.
        first_name:,
        # Representative's last name.
        last_name:,
        # Representative's mobile phone number in E.164 format.
        mobile_number:,
        relationship:,
        # Last four digits of the representative's Social Security number.
        ssn_last4:,
        # Your unique ID for the representative.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            representative_id: String,
            dob: Date,
            email: String,
            first_name: String,
            last_name: String,
            mobile_number: String,
            relationship: Straddle::RepresentativeRelationship,
            ssn_last4: String,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
