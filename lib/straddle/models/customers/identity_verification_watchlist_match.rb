# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class IdentityVerificationWatchlistMatch < Straddle::Internal::Type::BaseModel
        # @!attribute correlation
        #
        #   @return [Symbol, Straddle::Models::Customers::CorrelationBucket]
        required :correlation, enum: -> { Straddle::Customers::CorrelationBucket }

        # @!attribute list_name
        #   Name of the watchlist that contains the matching record.
        #
        #   @return [String]
        required :list_name, String

        # @!attribute match_fields
        #   Customer fields that match the watchlist record.
        #
        #   @return [Array<String>]
        required :match_fields, Straddle::Internal::Type::ArrayOf[String]

        # @!attribute urls
        #   Source URLs associated with the match.
        #
        #   @return [Array<String>]
        required :urls, Straddle::Internal::Type::ArrayOf[String]

        # @!method initialize(correlation:, list_name:, match_fields:, urls:)
        #   @param correlation [Symbol, Straddle::Models::Customers::CorrelationBucket]
        #
        #   @param list_name [String] Name of the watchlist that contains the matching record.
        #
        #   @param match_fields [Array<String>] Customer fields that match the watchlist record.
        #
        #   @param urls [Array<String>] Source URLs associated with the match.
      end
    end
  end
end
