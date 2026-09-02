# typed: strong

module Straddle
  module Models
    module Customers
      module VerificationDecision
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::Customers::VerificationDecision)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCEPT =
          T.let(
            :accept,
            Straddle::Customers::VerificationDecision::TaggedSymbol
          )
        REJECT =
          T.let(
            :reject,
            Straddle::Customers::VerificationDecision::TaggedSymbol
          )
        REVIEW =
          T.let(
            :review,
            Straddle::Customers::VerificationDecision::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::Customers::VerificationDecision::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
