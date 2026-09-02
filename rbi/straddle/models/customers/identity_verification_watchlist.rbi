# typed: strong

module Straddle
  module Models
    module Customers
      class IdentityVerificationWatchlist < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::IdentityVerificationWatchlist,
              Straddle::Internal::AnyHash
            )
          end

        # Result codes from Straddle watchlist screening.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :codes

        sig do
          returns(
            T.nilable(Straddle::Customers::VerificationDecision::TaggedSymbol)
          )
        end
        attr_reader :decision

        sig do
          params(
            decision: Straddle::Customers::VerificationDecision::OrSymbol
          ).void
        end
        attr_writer :decision

        # Names of watchlists with matches.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :matched

        # Details for matches found during watchlist screening.
        sig do
          returns(
            T.nilable(
              T::Array[Straddle::Customers::IdentityVerificationWatchlistMatch]
            )
          )
        end
        attr_accessor :matches

        sig do
          params(
            codes: T.nilable(T::Array[String]),
            decision: Straddle::Customers::VerificationDecision::OrSymbol,
            matched: T.nilable(T::Array[String]),
            matches:
              T.nilable(
                T::Array[
                  Straddle::Customers::IdentityVerificationWatchlistMatch::OrHash
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Result codes from Straddle watchlist screening.
          codes: nil,
          decision: nil,
          # Names of watchlists with matches.
          matched: nil,
          # Details for matches found during watchlist screening.
          matches: nil
        )
        end

        sig do
          override.returns(
            {
              codes: T.nilable(T::Array[String]),
              decision: Straddle::Customers::VerificationDecision::TaggedSymbol,
              matched: T.nilable(T::Array[String]),
              matches:
                T.nilable(
                  T::Array[
                    Straddle::Customers::IdentityVerificationWatchlistMatch
                  ]
                )
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
