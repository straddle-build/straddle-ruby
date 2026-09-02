# frozen_string_literal: true

module Straddle
  module Models
    # Sort direction for the results.
    module SortOrder
      extend Straddle::Internal::Type::Enum

      ASC = :asc
      DESC = :desc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
