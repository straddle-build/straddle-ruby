# typed: strong

module Straddle
  module Models
    class WebhookUnwrapParams < Straddle::Internal::Type::BaseModel
      extend Straddle::Internal::Type::RequestParameters::Converter
      include Straddle::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Straddle::WebhookUnwrapParams, Straddle::Internal::AnyHash)
        end

      sig do
        params(request_options: Straddle::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Straddle::RequestOptions }) }
      def to_hash
      end
    end
  end
end
