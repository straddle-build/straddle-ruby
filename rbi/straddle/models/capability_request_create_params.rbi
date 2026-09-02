# typed: strong

module Straddle
  module Models
    class CapabilityRequestCreateParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Straddle::CapabilityRequestCreateParams,
            Straddle::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_id

      # Request to enable or disable payments from businesses.
      sig do
        returns(T.nilable(Straddle::CapabilityRequestCreateParams::Businesses))
      end
      attr_reader :businesses

      sig do
        params(
          businesses:
            Straddle::CapabilityRequestCreateParams::Businesses::OrHash
        ).void
      end
      attr_writer :businesses

      # Requested charge capability and limits.
      sig do
        returns(T.nilable(Straddle::CapabilityRequestCreateParams::Charges))
      end
      attr_reader :charges

      sig do
        params(
          charges: Straddle::CapabilityRequestCreateParams::Charges::OrHash
        ).void
      end
      attr_writer :charges

      # Request to enable or disable payments from individuals.
      sig do
        returns(T.nilable(Straddle::CapabilityRequestCreateParams::Individuals))
      end
      attr_reader :individuals

      sig do
        params(
          individuals:
            Straddle::CapabilityRequestCreateParams::Individuals::OrHash
        ).void
      end
      attr_writer :individuals

      # Request to enable or disable internet and mobile payment authorization.
      sig do
        returns(T.nilable(Straddle::CapabilityRequestCreateParams::Internet))
      end
      attr_reader :internet

      sig do
        params(
          internet: Straddle::CapabilityRequestCreateParams::Internet::OrHash
        ).void
      end
      attr_writer :internet

      # Requested payout capability and limits.
      sig do
        returns(T.nilable(Straddle::CapabilityRequestCreateParams::Payouts))
      end
      attr_reader :payouts

      sig do
        params(
          payouts: Straddle::CapabilityRequestCreateParams::Payouts::OrHash
        ).void
      end
      attr_writer :payouts

      # Request to enable or disable signed-agreement payment authorization.
      sig do
        returns(
          T.nilable(Straddle::CapabilityRequestCreateParams::SignedAgreement)
        )
      end
      attr_reader :signed_agreement

      sig do
        params(
          signed_agreement:
            Straddle::CapabilityRequestCreateParams::SignedAgreement::OrHash
        ).void
      end
      attr_writer :signed_agreement

      # Optional client-generated identifier for tracing a series of related requests.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # Optional client-generated key for an idempotent request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Optional client-generated identifier for tracing one request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          account_id: String,
          businesses:
            Straddle::CapabilityRequestCreateParams::Businesses::OrHash,
          charges: Straddle::CapabilityRequestCreateParams::Charges::OrHash,
          individuals:
            Straddle::CapabilityRequestCreateParams::Individuals::OrHash,
          internet: Straddle::CapabilityRequestCreateParams::Internet::OrHash,
          payouts: Straddle::CapabilityRequestCreateParams::Payouts::OrHash,
          signed_agreement:
            Straddle::CapabilityRequestCreateParams::SignedAgreement::OrHash,
          correlation_id: String,
          idempotency_key: String,
          request_id: String,
          request_options: Straddle::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # Request to enable or disable payments from businesses.
        businesses: nil,
        # Requested charge capability and limits.
        charges: nil,
        # Request to enable or disable payments from individuals.
        individuals: nil,
        # Request to enable or disable internet and mobile payment authorization.
        internet: nil,
        # Requested payout capability and limits.
        payouts: nil,
        # Request to enable or disable signed-agreement payment authorization.
        signed_agreement: nil,
        # Optional client-generated identifier for tracing a series of related requests.
        correlation_id: nil,
        # Optional client-generated key for an idempotent request.
        idempotency_key: nil,
        # Optional client-generated identifier for tracing one request.
        request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            businesses: Straddle::CapabilityRequestCreateParams::Businesses,
            charges: Straddle::CapabilityRequestCreateParams::Charges,
            individuals: Straddle::CapabilityRequestCreateParams::Individuals,
            internet: Straddle::CapabilityRequestCreateParams::Internet,
            payouts: Straddle::CapabilityRequestCreateParams::Payouts,
            signed_agreement:
              Straddle::CapabilityRequestCreateParams::SignedAgreement,
            correlation_id: String,
            idempotency_key: String,
            request_id: String,
            request_options: Straddle::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Businesses < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::Businesses,
              Straddle::Internal::AnyHash
            )
          end

        # Whether the request enables or disables the capability.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Request to enable or disable payments from businesses.
        sig { params(enable: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether the request enables or disables the capability.
          enable:
        )
        end

        sig { override.returns({ enable: T::Boolean }) }
        def to_hash
        end
      end

      class Charges < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::Charges,
              Straddle::Internal::AnyHash
            )
          end

        # Daily charge amount limit in cents.
        sig { returns(Float) }
        attr_accessor :daily_amount

        # Whether to enable or disable charges for the account.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Maximum amount in cents for one charge.
        sig { returns(Float) }
        attr_accessor :max_amount

        # Monthly charge amount limit in cents.
        sig { returns(Float) }
        attr_accessor :monthly_amount

        # Maximum number of charges per calendar month.
        sig { returns(Integer) }
        attr_accessor :monthly_count

        # Requested charge capability and limits.
        sig do
          params(
            daily_amount: Float,
            enable: T::Boolean,
            max_amount: Float,
            monthly_amount: Float,
            monthly_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Daily charge amount limit in cents.
          daily_amount:,
          # Whether to enable or disable charges for the account.
          enable:,
          # Maximum amount in cents for one charge.
          max_amount:,
          # Monthly charge amount limit in cents.
          monthly_amount:,
          # Maximum number of charges per calendar month.
          monthly_count:
        )
        end

        sig do
          override.returns(
            {
              daily_amount: Float,
              enable: T::Boolean,
              max_amount: Float,
              monthly_amount: Float,
              monthly_count: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Individuals < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::Individuals,
              Straddle::Internal::AnyHash
            )
          end

        # Whether the request enables or disables the capability.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Request to enable or disable payments from individuals.
        sig { params(enable: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether the request enables or disables the capability.
          enable:
        )
        end

        sig { override.returns({ enable: T::Boolean }) }
        def to_hash
        end
      end

      class Internet < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::Internet,
              Straddle::Internal::AnyHash
            )
          end

        # Whether the request enables or disables the capability.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Request to enable or disable internet and mobile payment authorization.
        sig { params(enable: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether the request enables or disables the capability.
          enable:
        )
        end

        sig { override.returns({ enable: T::Boolean }) }
        def to_hash
        end
      end

      class Payouts < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::Payouts,
              Straddle::Internal::AnyHash
            )
          end

        # Daily payout amount limit in cents.
        sig { returns(Float) }
        attr_accessor :daily_amount

        # Whether to enable or disable payouts for the account.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Maximum amount in cents for one payout.
        sig { returns(Float) }
        attr_accessor :max_amount

        # Monthly payout amount limit in cents.
        sig { returns(Float) }
        attr_accessor :monthly_amount

        # Maximum number of payouts per calendar month.
        sig { returns(Integer) }
        attr_accessor :monthly_count

        # Requested payout capability and limits.
        sig do
          params(
            daily_amount: Float,
            enable: T::Boolean,
            max_amount: Float,
            monthly_amount: Float,
            monthly_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Daily payout amount limit in cents.
          daily_amount:,
          # Whether to enable or disable payouts for the account.
          enable:,
          # Maximum amount in cents for one payout.
          max_amount:,
          # Monthly payout amount limit in cents.
          monthly_amount:,
          # Maximum number of payouts per calendar month.
          monthly_count:
        )
        end

        sig do
          override.returns(
            {
              daily_amount: Float,
              enable: T::Boolean,
              max_amount: Float,
              monthly_amount: Float,
              monthly_count: Integer
            }
          )
        end
        def to_hash
        end
      end

      class SignedAgreement < Straddle::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Straddle::CapabilityRequestCreateParams::SignedAgreement,
              Straddle::Internal::AnyHash
            )
          end

        # Whether the request enables or disables the capability.
        sig { returns(T::Boolean) }
        attr_accessor :enable

        # Request to enable or disable signed-agreement payment authorization.
        sig { params(enable: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether the request enables or disables the capability.
          enable:
        )
        end

        sig { override.returns({ enable: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
