# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Representatives#update
    class RepresentativeUpdateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!attribute representative_id
      #
      #   @return [String]
      required :representative_id, String

      # @!attribute dob
      #   Representative's date of birth in `YYYY-MM-DD` format.
      #
      #   @return [Date]
      required :dob, Date

      # @!attribute email
      #   Representative's email address.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   Representative's first name.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   Representative's last name.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute mobile_number
      #   Representative's mobile phone number in E.164 format.
      #
      #   @return [String]
      required :mobile_number, String

      # @!attribute relationship
      #
      #   @return [Straddle::Models::RepresentativeRelationship]
      required :relationship, -> { Straddle::RepresentativeRelationship }

      # @!attribute ssn_last4
      #   Last four digits of the representative's Social Security number.
      #
      #   @return [String]
      required :ssn_last4, String

      # @!attribute external_id
      #   Your unique ID for the representative.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String], nil?: true

      # @!attribute correlation_id
      #   Optional client-generated identifier for tracing a series of related requests.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute idempotency_key
      #   Optional client-generated key for an idempotent request.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute request_id
      #   Optional client-generated identifier for tracing one request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!method initialize(representative_id:, dob:, email:, first_name:, last_name:, mobile_number:, relationship:, ssn_last4:, external_id: nil, metadata: nil, correlation_id: nil, idempotency_key: nil, request_id: nil, request_options: {})
      #   @param representative_id [String]
      #
      #   @param dob [Date] Representative's date of birth in `YYYY-MM-DD` format.
      #
      #   @param email [String] Representative's email address.
      #
      #   @param first_name [String] Representative's first name.
      #
      #   @param last_name [String] Representative's last name.
      #
      #   @param mobile_number [String] Representative's mobile phone number in E.164 format.
      #
      #   @param relationship [Straddle::Models::RepresentativeRelationship]
      #
      #   @param ssn_last4 [String] Last four digits of the representative's Social Security number.
      #
      #   @param external_id [String, nil] Your unique ID for the representative.
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Up to 20 user-defined key-value pairs.
      #
      #   @param correlation_id [String] Optional client-generated identifier for tracing a series of related requests.
      #
      #   @param idempotency_key [String] Optional client-generated key for an idempotent request.
      #
      #   @param request_id [String] Optional client-generated identifier for tracing one request.
      #
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
