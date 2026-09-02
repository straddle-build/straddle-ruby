# typed: strong

module Straddle
  module Models
    class TermsOfService < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::TermsOfService, Straddle::Internal::AnyHash)
        end

      # Date and time when the account accepted the Terms of Service.
      sig { returns(Time) }
      attr_accessor :accepted_date

      # Agreement type. Use `embedded` unless Straddle has enabled the platform for
      # `direct` agreements.
      sig { returns(Straddle::TermsOfService::AgreementType::OrSymbol) }
      attr_accessor :agreement_type

      # URL of the accepted agreement.
      sig { returns(T.nilable(String)) }
      attr_accessor :agreement_url

      # IP address used to accept the Terms of Service.
      sig { returns(T.nilable(String)) }
      attr_accessor :accepted_ip

      # User agent of the browser or application that accepted the Terms of Service.
      sig { returns(T.nilable(String)) }
      attr_accessor :accepted_user_agent

      sig do
        params(
          accepted_date: Time,
          agreement_type: Straddle::TermsOfService::AgreementType::OrSymbol,
          agreement_url: T.nilable(String),
          accepted_ip: T.nilable(String),
          accepted_user_agent: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Date and time when the account accepted the Terms of Service.
        accepted_date:,
        # Agreement type. Use `embedded` unless Straddle has enabled the platform for
        # `direct` agreements.
        agreement_type:,
        # URL of the accepted agreement.
        agreement_url:,
        # IP address used to accept the Terms of Service.
        accepted_ip: nil,
        # User agent of the browser or application that accepted the Terms of Service.
        accepted_user_agent: nil
      )
      end

      sig do
        override.returns(
          {
            accepted_date: Time,
            agreement_type: Straddle::TermsOfService::AgreementType::OrSymbol,
            agreement_url: T.nilable(String),
            accepted_ip: T.nilable(String),
            accepted_user_agent: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Agreement type. Use `embedded` unless Straddle has enabled the platform for
      # `direct` agreements.
      module AgreementType
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::TermsOfService::AgreementType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMBEDDED =
          T.let(
            :embedded,
            Straddle::TermsOfService::AgreementType::TaggedSymbol
          )
        DIRECT =
          T.let(:direct, Straddle::TermsOfService::AgreementType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Straddle::TermsOfService::AgreementType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
