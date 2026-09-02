# frozen_string_literal: true

module Straddle
  module Models
    module PaykeyStatus
      extend Straddle::Internal::Type::Enum

      PENDING = :pending
      ACTIVE = :active
      INACTIVE = :inactive
      REJECTED = :rejected
      REVIEW = :review
      BLOCKED = :blocked

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
