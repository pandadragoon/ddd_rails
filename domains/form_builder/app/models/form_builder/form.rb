# frozen_string_literal: true

module FormBuilder
  # Form Model
  class Form < ApplicationRecord
    attribute :name, :string
    attribute :created_at, :datetime
    attribute :update_at, :datetime
    attribute :uuid, :uuid
    attribute :family_uuid, :uuid
    attribute :form_type_id, :integer
    attribute :form_published_version_id, :integer
    attribute :meta, :json
    attribute :parent_id, :integer

    belongs_to :form_builder_form_type, class_name: 'FormBuilder::FormType', optional: true
    belongs_to :form_builder_form_published_version, class_name: 'FormBuilder::FormPublishedVersion', optional: true
    belongs_to :parent, class_name: 'FormBuilder::Form'
  end
end
