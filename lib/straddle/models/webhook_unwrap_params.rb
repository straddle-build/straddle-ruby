# frozen_string_literal: true

module Straddle
  module Models
    # @see Straddle::Resources::Webhooks#unwrap
    class WebhookUnwrapParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Straddle::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
