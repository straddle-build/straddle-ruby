# typed: strong

module Straddle
  module Models
    class AccountStatusDetail < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountStatusDetail, Straddle::Internal::AnyHash)
        end

      # Machine-readable status code from the source.
      sig { returns(String) }
      attr_accessor :code

      # Human-readable description of the account's status.
      sig { returns(String) }
      attr_accessor :message

      # Machine-readable reason for the account's status.
      sig { returns(Straddle::AccountStatusDetail::Reason::TaggedSymbol) }
      attr_accessor :reason

      # System that produced the account status detail.
      sig { returns(Straddle::AccountStatusDetail::Source::TaggedSymbol) }
      attr_accessor :source

      sig do
        params(
          code: String,
          message: String,
          reason: Straddle::AccountStatusDetail::Reason::OrSymbol,
          source: Straddle::AccountStatusDetail::Source::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Machine-readable status code from the source.
        code:,
        # Human-readable description of the account's status.
        message:,
        # Machine-readable reason for the account's status.
        reason:,
        # System that produced the account status detail.
        source:
      )
      end

      sig do
        override.returns(
          {
            code: String,
            message: String,
            reason: Straddle::AccountStatusDetail::Reason::TaggedSymbol,
            source: Straddle::AccountStatusDetail::Source::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Machine-readable reason for the account's status.
      module Reason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::AccountStatusDetail::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNVERIFIED =
          T.let(
            :unverified,
            Straddle::AccountStatusDetail::Reason::TaggedSymbol
          )
        IN_REVIEW =
          T.let(:in_review, Straddle::AccountStatusDetail::Reason::TaggedSymbol)
        PENDING =
          T.let(:pending, Straddle::AccountStatusDetail::Reason::TaggedSymbol)
        STUCK =
          T.let(:stuck, Straddle::AccountStatusDetail::Reason::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Straddle::AccountStatusDetail::Reason::TaggedSymbol)
        FAILED_VERIFICATION =
          T.let(
            :failed_verification,
            Straddle::AccountStatusDetail::Reason::TaggedSymbol
          )
        DISABLED =
          T.let(:disabled, Straddle::AccountStatusDetail::Reason::TaggedSymbol)
        TERMINATED =
          T.let(
            :terminated,
            Straddle::AccountStatusDetail::Reason::TaggedSymbol
          )
        NEW = T.let(:new, Straddle::AccountStatusDetail::Reason::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::AccountStatusDetail::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # System that produced the account status detail.
      module Source
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Straddle::AccountStatusDetail::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(
            :watchtower,
            Straddle::AccountStatusDetail::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::AccountStatusDetail::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
