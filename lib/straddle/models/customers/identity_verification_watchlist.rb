# frozen_string_literal: true

module Straddle
  module Models
    module Customers
      class IdentityVerificationWatchlist < Straddle::Internal::Type::BaseModel
        # @!attribute codes
        #   Result codes from Straddle watchlist screening.
        #
        #   @return [Array<String>, nil]
        optional :codes, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute decision
        #
        #   @return [Symbol, Straddle::Models::Customers::VerificationDecision, nil]
        optional :decision, enum: -> { Straddle::Customers::VerificationDecision }

        # @!attribute matched
        #   Names of watchlists with matches.
        #
        #   @return [Array<String>, nil]
        optional :matched, Straddle::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute matches
        #   Details for matches found during watchlist screening.
        #
        #   @return [Array<Straddle::Models::Customers::IdentityVerificationWatchlistMatch>, nil]
        optional :matches,
                 -> do
                   Straddle::Internal::Type::ArrayOf[Straddle::Customers::IdentityVerificationWatchlistMatch]
                 end,
                 nil?: true

        # @!method initialize(codes: nil, decision: nil, matched: nil, matches: nil)
        #   @param codes [Array<String>, nil] Result codes from Straddle watchlist screening.
        #
        #   @param decision [Symbol, Straddle::Models::Customers::VerificationDecision]
        #
        #   @param matched [Array<String>, nil] Names of watchlists with matches.
        #
        #   @param matches [Array<Straddle::Models::Customers::IdentityVerificationWatchlistMatch>, nil] Details for matches found during watchlist screening.
      end
    end
  end
end
