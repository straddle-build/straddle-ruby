# typed: strong

module Straddle
  module Models
    class RepresentativeCreatedV1WebhookEvent < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::RepresentativeCreatedV1WebhookEvent,
            Straddle::Internal::AnyHash
          )
        end

      # Unique identifier for the account associated with this event.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Straddle::Representative) }
      attr_reader :data

      sig { params(data: Straddle::Representative::OrHash).void }
      attr_writer :data

      # Unique identifier for this event.
      sig { returns(String) }
      attr_accessor :event_id

      # Type of this event.
      sig { returns(String) }
      attr_accessor :event_type

      sig do
        params(
          account_id: String,
          data: Straddle::Representative::OrHash,
          event_id: String,
          event_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the account associated with this event.
        account_id:,
        data:,
        # Unique identifier for this event.
        event_id:,
        # Type of this event.
        event_type:
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            data: Straddle::Representative,
            event_id: String,
            event_type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
