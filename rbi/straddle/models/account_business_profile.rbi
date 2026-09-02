# typed: strong

module Straddle
  module Models
    class AccountBusinessProfile < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::AccountBusinessProfile, Straddle::Internal::AnyHash)
        end

      # The operating or trade name of the business.
      sig { returns(String) }
      attr_accessor :name

      # URL of the business's primary website.
      sig { returns(String) }
      attr_accessor :website

      # Optional business address. If provided, `line1`, `city`, `state`, and
      # `postal_code` are required.
      sig { returns(T.nilable(Straddle::AccountAddress)) }
      attr_reader :address

      sig { params(address: T.nilable(Straddle::AccountAddress::OrHash)).void }
      attr_writer :address

      # Description of the business and its products or services.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Straddle::AccountIndustry)) }
      attr_reader :industry

      sig { params(industry: Straddle::AccountIndustry::OrHash).void }
      attr_writer :industry

      # The official registered name of the business.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_name

      # Primary business phone number in E.164 format.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      sig { returns(T.nilable(Straddle::AccountSupportChannels)) }
      attr_reader :support_channels

      sig do
        params(support_channels: Straddle::AccountSupportChannels::OrHash).void
      end
      attr_writer :support_channels

      # Business tax identification number, such as a US Employer Identification Number
      # (EIN).
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      # How the business plans to use Straddle.
      sig { returns(T.nilable(String)) }
      attr_accessor :use_case

      sig do
        params(
          name: String,
          website: String,
          address: T.nilable(Straddle::AccountAddress::OrHash),
          description: T.nilable(String),
          industry: Straddle::AccountIndustry::OrHash,
          legal_name: T.nilable(String),
          phone: T.nilable(String),
          support_channels: Straddle::AccountSupportChannels::OrHash,
          tax_id: T.nilable(String),
          use_case: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The operating or trade name of the business.
        name:,
        # URL of the business's primary website.
        website:,
        # Optional business address. If provided, `line1`, `city`, `state`, and
        # `postal_code` are required.
        address: nil,
        # Description of the business and its products or services.
        description: nil,
        industry: nil,
        # The official registered name of the business.
        legal_name: nil,
        # Primary business phone number in E.164 format.
        phone: nil,
        support_channels: nil,
        # Business tax identification number, such as a US Employer Identification Number
        # (EIN).
        tax_id: nil,
        # How the business plans to use Straddle.
        use_case: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            website: String,
            address: T.nilable(Straddle::AccountAddress),
            description: T.nilable(String),
            industry: Straddle::AccountIndustry,
            legal_name: T.nilable(String),
            phone: T.nilable(String),
            support_channels: Straddle::AccountSupportChannels,
            tax_id: T.nilable(String),
            use_case: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
