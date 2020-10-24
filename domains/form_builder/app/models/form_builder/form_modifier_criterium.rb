module FormBuilder
  class FormModifierCriterium < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :form_modifier_id, :integer
    attribute :modifier_attr, :integer
    attribute :modifier_attr_set, :json
    
    belongs_to :form_builder_form_modifier, class_name: 'FormBuilder::FormModifier'
    belongs_to :form_builder_form_modifier_attribute_type, class_name: 'FormBuilder::FormModifierAttributeType'
  end
end
