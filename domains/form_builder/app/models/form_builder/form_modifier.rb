module FormBuilder
  class FormModifier < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :target_type, :integer
    attribute :target_id, :integer

    belongs_to :form_builder_form_modifier_target_type, class_name: 'FormBuilder::FormModifierTargetType'
  end
end
