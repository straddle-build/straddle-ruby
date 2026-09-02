# typed: strong

module Straddle
  module Models
    PaykeyVerificationResult = Paykeys::PaykeyVerificationResult

    module Paykeys
      module PaykeyVerificationResult
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::Paykeys::PaykeyVerificationResult)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPT =
          T.let(
            :accept,
            Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol
          )
        REJECT =
          T.let(
            :reject,
            Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol
          )
        REVIEW =
          T.let(
            :review,
            Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::Paykeys::PaykeyVerificationResult::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
