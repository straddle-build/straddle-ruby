# frozen_string_literal: true

module Straddle
  module Models
    # How the customer authorized the charge. `internet` covers online and mobile
    # authorization. `signed` covers written or PDF-signed agreements.
    module ConsentType
      extend Straddle::Internal::Type::Enum

      INTERNET = :internet
      SIGNED = :signed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
