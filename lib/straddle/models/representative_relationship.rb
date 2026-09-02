# frozen_string_literal: true

module Straddle
  module Models
    class RepresentativeRelationship < Straddle::Internal::Type::BaseModel
      # @!attribute control
      #   Whether the representative controls, manages, or directs the business. Each
      #   legal entity must have one representative with `control` set to `true`.
      #
      #   @return [Boolean]
      required :control, Straddle::Internal::Type::Boolean

      # @!attribute owner
      #   Whether the representative owns any equity in the business.
      #
      #   @return [Boolean]
      required :owner, Straddle::Internal::Type::Boolean

      # @!attribute primary
      #   Whether this person is the account's primary representative. The primary
      #   representative provides personal and business information and accepts the
      #   services agreement. An account can have only one primary representative.
      #
      #   @return [Boolean]
      required :primary, Straddle::Internal::Type::Boolean

      # @!attribute percent_ownership
      #   The representative's ownership percentage. Required when `owner` is `true`.
      #
      #   @return [Float, nil]
      optional :percent_ownership, Float, nil?: true

      # @!attribute title
      #   The representative's job title.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(control:, owner:, primary:, percent_ownership: nil, title: nil)
      #   Some parameter documentations has been truncated, see
      #   {Straddle::Models::RepresentativeRelationship} for more details.
      #
      #   @param control [Boolean] Whether the representative controls, manages, or directs the business. Each lega
      #
      #   @param owner [Boolean] Whether the representative owns any equity in the business.
      #
      #   @param primary [Boolean] Whether this person is the account's primary representative. The primary represe
      #
      #   @param percent_ownership [Float, nil] The representative's ownership percentage. Required when `owner` is `true`.
      #
      #   @param title [String, nil] The representative's job title.
    end
  end
end
