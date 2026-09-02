# typed: strong

module Straddle
  module Models
    class Organization < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Straddle::Organization, Straddle::Internal::AnyHash)
        end

      # Straddle's unique ID for the organization.
      sig { returns(String) }
      attr_accessor :id

      # Date and time when Straddle created the organization.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the organization.
      sig { returns(String) }
      attr_accessor :name

      # Date and time of the most recent organization update.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Your unique ID for the organization.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Up to 20 user-defined key-value pairs.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          updated_at: Time,
          external_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
        ).returns(T.attached_class)
      end
      def self.new(
        # Straddle's unique ID for the organization.
        id:,
        # Date and time when Straddle created the organization.
        created_at:,
        # The name of the organization.
        name:,
        # Date and time of the most recent organization update.
        updated_at:,
        # Your unique ID for the organization.
        external_id: nil,
        # Up to 20 user-defined key-value pairs.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            name: String,
            updated_at: Time,
            external_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
          }
        )
      end
      def to_hash
      end
    end
  end
end
