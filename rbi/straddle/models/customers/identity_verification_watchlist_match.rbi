# typed: strong

module Straddle
  module Models
    module Customers
      class IdentityVerificationWatchlistMatch < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::Customers::IdentityVerificationWatchlistMatch,
              Straddle::Internal::AnyHash
            )
          end

        sig { returns(Straddle::Customers::CorrelationBucket::TaggedSymbol) }
        attr_accessor :correlation

        # Name of the watchlist that contains the matching record.
        sig { returns(String) }
        attr_accessor :list_name

        # Customer fields that match the watchlist record.
        sig { returns(T::Array[String]) }
        attr_accessor :match_fields

        # Source URLs associated with the match.
        sig { returns(T::Array[String]) }
        attr_accessor :urls

        sig do
          params(
            correlation: Straddle::Customers::CorrelationBucket::OrSymbol,
            list_name: String,
            match_fields: T::Array[String],
            urls: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          correlation:,
          # Name of the watchlist that contains the matching record.
          list_name:,
          # Customer fields that match the watchlist record.
          match_fields:,
          # Source URLs associated with the match.
          urls:
        )
        end

        sig do
          override.returns(
            {
              correlation: Straddle::Customers::CorrelationBucket::TaggedSymbol,
              list_name: String,
              match_fields: T::Array[String],
              urls: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
