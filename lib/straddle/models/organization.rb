# frozen_string_literal: true

module Straddle
  module Models
    class Organization < Straddle::Internal::Type::BaseModel
      # @!attribute id
      #   Straddle's unique ID for the organization.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Date and time when Straddle created the organization.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   The name of the organization.
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Date and time of the most recent organization update.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute external_id
      #   Your unique ID for the organization.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   Up to 20 user-defined key-value pairs.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Straddle::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(id:, created_at:, name:, updated_at:, external_id: nil, metadata: nil)
      #   @param id [String] Straddle's unique ID for the organization.
      #
      #   @param created_at [Time] Date and time when Straddle created the organization.
      #
      #   @param name [String] The name of the organization.
      #
      #   @param updated_at [Time] Date and time of the most recent organization update.
      #
      #   @param external_id [String, nil] Your unique ID for the organization.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] Up to 20 user-defined key-value pairs.
    end
  end
end
