# typed: strong

module Straddle
  module Models
    class RepresentativeStatusDetail < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::RepresentativeStatusDetail,
            Straddle::Internal::AnyHash
          )
        end

      # Machine-readable status code from the source.
      sig { returns(String) }
      attr_accessor :code

      # Human-readable description of the representative's status.
      sig { returns(String) }
      attr_accessor :message

      # Machine-readable reason for the representative's status.
      sig do
        returns(Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol)
      end
      attr_accessor :reason

      # System that produced the representative status detail.
      sig do
        returns(Straddle::RepresentativeStatusDetail::Source::TaggedSymbol)
      end
      attr_accessor :source

      sig do
        params(
          code: String,
          message: String,
          reason: Straddle::RepresentativeStatusDetail::Reason::OrSymbol,
          source: Straddle::RepresentativeStatusDetail::Source::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Machine-readable status code from the source.
        code:,
        # Human-readable description of the representative's status.
        message:,
        # Machine-readable reason for the representative's status.
        reason:,
        # System that produced the representative status detail.
        source:
      )
      end

      sig do
        override.returns(
          {
            code: String,
            message: String,
            reason: Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol,
            source: Straddle::RepresentativeStatusDetail::Source::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Machine-readable reason for the representative's status.
      module Reason
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::RepresentativeStatusDetail::Reason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNVERIFIED =
          T.let(
            :unverified,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        IN_REVIEW =
          T.let(
            :in_review,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        STUCK =
          T.let(
            :stuck,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        FAILED_VERIFICATION =
          T.let(
            :failed_verification,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )
        NEW =
          T.let(
            :new,
            Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::RepresentativeStatusDetail::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # System that produced the representative status detail.
      module Source
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::RepresentativeStatusDetail::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WATCHTOWER =
          T.let(
            :watchtower,
            Straddle::RepresentativeStatusDetail::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::RepresentativeStatusDetail::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
