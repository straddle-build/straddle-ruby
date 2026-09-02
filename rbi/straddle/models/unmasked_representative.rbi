# typed: strong

module Straddle
  module Models
    class UnmaskedRepresentative < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::UnmaskedRepresentative, Straddle::Internal::AnyHash)
        end

      # Straddle's unique ID for the representative.
      sig { returns(String) }
      attr_accessor :id

      # ID of the account associated with the representative.
      sig { returns(String) }
      attr_accessor :account_id

      # Date and time when Straddle created the representative.
      sig { returns(Time) }
      attr_accessor :created_at

      # Representative's date of birth in `YYYY-MM-DD` format.
      sig { returns(Date) }
      attr_accessor :dob

      # Representative's email address.
      sig { returns(String) }
      attr_accessor :email

      # Representative's first name.
      sig { returns(String) }
      attr_accessor :first_name

      # Representative's last name.
      sig { returns(String) }
      attr_accessor :last_name

      # Representative's mobile phone number.
      sig { returns(String) }
      attr_accessor :mobile_number

      sig { returns(Straddle::RepresentativeRelationship) }
      attr_reader :relationship

      sig do
        params(relationship: Straddle::RepresentativeRelationship::OrHash).void
      end
      attr_writer :relationship

      # Last four digits of the representative's Social Security number.
      sig { returns(String) }
      attr_accessor :ssn_last4

      # Status of the representative.
      sig { returns(Straddle::UnmaskedRepresentative::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Straddle::RepresentativeStatusDetail) }
      attr_reader :status_detail

      sig do
        params(status_detail: Straddle::RepresentativeStatusDetail::OrHash).void
      end
      attr_writer :status_detail

      # Date and time of the most recent representative update.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Your unique ID for the representative.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # ID of the Straddle user linked to the representative, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          id: String,
          account_id: String,
          created_at: Time,
          dob: Date,
          email: String,
          first_name: String,
          last_name: String,
          mobile_number: String,
          relationship: Straddle::RepresentativeRelationship::OrHash,
          ssn_last4: String,
          status: Straddle::UnmaskedRepresentative::Status::OrSymbol,
          status_detail: Straddle::RepresentativeStatusDetail::OrHash,
          updated_at: Time,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          user_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the representative.
        id:,
        # ID of the account associated with the representative.
        account_id:,
        # Date and time when Straddle created the representative.
        created_at:,
        # Representative's date of birth in `YYYY-MM-DD` format.
        dob:,
        # Representative's email address.
        email:,
        # Representative's first name.
        first_name:,
        # Representative's last name.
        last_name:,
        # Representative's mobile phone number.
        mobile_number:,
        relationship:,
        # Last four digits of the representative's Social Security number.
        ssn_last4:,
        # Status of the representative.
        status:,
        status_detail:,
        # Date and time of the most recent representative update.
        updated_at:,
        # Your unique ID for the representative.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil,
        # ID of the Straddle user linked to the representative, if any.
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            created_at: Time,
            dob: Date,
            email: String,
            first_name: String,
            last_name: String,
            mobile_number: String,
            relationship: Straddle::RepresentativeRelationship,
            ssn_last4: String,
            status: Straddle::UnmaskedRepresentative::Status::TaggedSymbol,
            status_detail: Straddle::RepresentativeStatusDetail,
            updated_at: Time,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            user_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Status of the representative.
      module Status
        extend Straddle::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Straddle::UnmaskedRepresentative::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Straddle::UnmaskedRepresentative::Status::TaggedSymbol
          )
        ONBOARDING =
          T.let(
            :onboarding,
            Straddle::UnmaskedRepresentative::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Straddle::UnmaskedRepresentative::Status::TaggedSymbol)
        REJECTED =
          T.let(
            :rejected,
            Straddle::UnmaskedRepresentative::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Straddle::UnmaskedRepresentative::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Straddle::UnmaskedRepresentative::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
