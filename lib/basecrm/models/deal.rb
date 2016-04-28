# WARNING: This code is auto-generated from the BaseCRM API Discovery JSON Schema

module BaseCRM
  class Deal < Model
    # @!attribute [r] created_at
    #   @return [DateTime] Date and time that the deal was created in UTC (ISO8601 format).
    # attr_reader :created_at
    # @!attribute [r] creator_id
    #   @return [Integer] Unique identifier of the user who created the deal.
    # attr_reader :creator_id
    # @!attribute [r] dropbox_email
    #   @return [String] Dropbox email connected with the deal.
    # attr_reader :dropbox_email
    # @!attribute [r] id
    #   @return [Integer] Unique identifier of the deal.
    # attr_reader :id
    # @!attribute [r] organization_id
    #   @return [Integer] Unique identifier of an organization.
    # attr_reader :organization_id
    # @!attribute [r] updated_at
    #   @return [DateTime] Date and time of the last update on the deal in UTC (ISO8601 format).
    # attr_reader :updated_at

    # @!attribute [rw] contact_id
    #   @return [Integer] Unique identifier of a primary contact.
    # attr_accessor :contact_id
    # @!attribute [rw] currency
    #   @return [String] Currency of the deal, specified in 3-character currency code (ISO4217) format.
    # attr_accessor :currency
    # @!attribute [rw] custom_fields
    #   @return [Hash] Custom fields are key-value data attached to a deal. See more at [Custom Fields](/docs/rest/articles/requests#custom_fields).
    # attr_accessor :custom_fields
    # @!attribute [rw] hot
    #   @return [Boolean] Indicator of whether or not the deal is hot.
    # attr_accessor :hot
    # @!attribute [rw] loss_reason_id
    #   @return [Integer] Reason why the deal was lost.
    # attr_accessor :loss_reason_id
    # @!attribute [rw] name
    #   @return [String] Name of the deal.
    # attr_accessor :name
    # @!attribute [rw] owner_id
    #   @return [Integer] Unique identifier of the user that the deal is assigned to.
    # attr_accessor :owner_id
    # @!attribute [rw] source_id
    #   @return [Integer] Unique identifier of the Source.
    # attr_accessor :source_id
    # @!attribute [rw] stage_id
    #   @return [Integer] Unique identifier of the deal's current stage in the pipeline.
    # attr_accessor :stage_id
    # @!attribute [rw] tags
    #   @return [Array<String>] An array of tags for a deal. See more at [Tags](/docs/rest/articles/requests#tags).
    # attr_accessor :tags
    # @!attribute [rw] value
    #   @return [Integer] Value of the deal in a currency specified in the `currency` field.
    # attr_accessor :value
  end
end
