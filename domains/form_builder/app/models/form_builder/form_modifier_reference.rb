module FormBuilder
  class FormModifierReference < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :form_modifier_id, :integer
    attribute :key, :string
    attribute :values,  :json
    
    belongs_to :form_builder_form_modifier, class_name: 'FormBuilder::FormModifier'
  end
end
