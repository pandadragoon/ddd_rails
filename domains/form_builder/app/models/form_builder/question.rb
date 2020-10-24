module FormBuilder
  class Question < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :family_uuid, :uuid
    attribute :parent_id, :integer
    attribute :label, :string
    attribute :section_id,  :integer
    
    belongs_to :parent, class_name: 'FormBuilder::Question'
    belongs_to :form_builder_section, class_name: 'FormBuilder::Section'
  end
end
