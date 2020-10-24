module FormBuilder
  class FormsTemplate < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :form_id, :integer
    attribute :template_id, :integer
    
    belongs_to :form_builder_form, class_name: 'FormBuilder::Form'
    belongs_to :form_builder_template, class_name: 'FormBuilder::Template'
  end
end
