# typed: strong

module Straddle
  module Models
    class LinkedBankAccountStatusDetail < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::LinkedBankAccountStatusDetail,
            Straddle::Internal::AnyHash
          )
        end

      # Machine-readable status code from the source.
      sig { returns(String) }
      attr_accessor :code

      # Human-readable description of the linked bank account's status.
      sig { returns(String) }
      attr_accessor :message

      # Machine-readable reason for the linked bank account's status.
      sig do
        returns(Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol)
      end
      attr_accessor :reason

      # System that produced the linked bank account status detail.
      sig do
        returns(Straddle::LinkedBankAccountStatusDetail::Source::TaggedSymbol)
      end
      attr_accessor :source

      sig do
        params(
          code: String,
          message: String,
          reason: Straddle::LinkedBankAccountStatusDetail::Reason::OrSymbol,
          source: Straddle::LinkedBankAccountStatusDetail::Source::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Machine-readable status code from the source.
        code:,
        # Human-readable description of the linked bank account's status.
        message:,
        # Machine-readable reason for the linked bank account's status.
        reason:,
        # System that produced the linked bank account status detail.
        source:
      )
      end

      sig do
        override.returns(
          {
            code: String,
            message: String,
            reason:
              Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol,
            source:
              Straddle::LinkedBankAccountStatusDetail::Source::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Machine-readable reason for the linked bank account's status.
      module Reason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountStatusDetail::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNVERIFIED =
          T.let(
            :unverified,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        STUCK =
          T.let(
            :stuck,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        FAILED_VERIFICATION =
          T.let(
            :failed_verification,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )
        NEW =
          T.let(
            :new,
            Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountStatusDetail::Reason::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # System that produced the linked bank account status detail.
      module Source
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::LinkedBankAccountStatusDetail::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(
            :watchtower,
            Straddle::LinkedBankAccountStatusDetail::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Straddle::LinkedBankAccountStatusDetail::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
