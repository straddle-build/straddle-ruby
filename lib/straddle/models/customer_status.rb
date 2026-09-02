# frozen_string_literal: true

module Straddle
  module Models
    module CustomerStatus
      extend Straddle::Internal::Type::Enum

      PENDING = :pending
      REVIEW = :review
      VERIFIED = :verified
      INACTIVE = :inactive
      REJECTED = :rejected

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
