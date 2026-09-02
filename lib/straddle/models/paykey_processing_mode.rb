# frozen_string_literal: true

module Straddle
  module Models
    module PaykeyProcessingMode
      extend Straddle::Internal::Type::Enum

      INLINE = :inline
      BACKGROUND = :background
      SKIP = :skip

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
