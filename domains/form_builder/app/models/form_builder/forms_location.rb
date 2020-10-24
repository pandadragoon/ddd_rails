module FormBuilder
  class FormsLocation < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :form_id, :integer
    attribute :location_uuid, :uuid
    
    belongs_to :form_builder_form, class_name: 'FormBuilder::Form'
  end
end
