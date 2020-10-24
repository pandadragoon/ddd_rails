module FormBuilder
  class FormPublishedVersion < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :form_id, :integer
    attribute :published_form_id, :integer
    attribute :created_by_uuid, :uuid
    attribute :published_by_uuid, :uuid
    
    belongs_to :form_builder_form, class_name: 'FormBuilder::Form'
    belongs_to :published_form_id, class_name: 'FormBuilder::Form'
  end
end
