# typed: strong

module Straddle
  module Models
    class RepresentativeRelationship < Straddle::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Straddle::RepresentativeRelationship,
            Straddle::Internal::AnyHash
          )
        end

      # Whether the representative controls, manages, or directs the business. Each
      # legal entity must have one representative with `control` set to `true`.
      sig { returns(T::Boolean) }
      attr_accessor :control

      # Whether the representative owns any equity in the business.
      sig { returns(T::Boolean) }
      attr_accessor :owner

      # Whether this person is the account's primary representative. The primary
      # representative provides personal and business information and accepts the
      # services agreement. An account can have only one primary representative.
      sig { returns(T::Boolean) }
      attr_accessor :primary

      # The representative's ownership percentage. Required when `owner` is `true`.
      sig { returns(T.nilable(Float)) }
      attr_accessor :percent_ownership

      # The representative's job title.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          control: T::Boolean,
          owner: T::Boolean,
          primary: T::Boolean,
          percent_ownership: T.nilable(Float),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the representative controls, manages, or directs the business. Each
        # legal entity must have one representative with `control` set to `true`.
        control:,
        # Whether the representative owns any equity in the business.
        owner:,
        # Whether this person is the account's primary representative. The primary
        # representative provides personal and business information and accepts the
        # services agreement. An account can have only one primary representative.
        primary:,
        # The representative's ownership percentage. Required when `owner` is `true`.
        percent_ownership: nil,
        # The representative's job title.
        title: nil
      )
      end

      sig do
        override.returns(
          {
            control: T::Boolean,
            owner: T::Boolean,
            primary: T::Boolean,
            percent_ownership: T.nilable(Float),
            title: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
