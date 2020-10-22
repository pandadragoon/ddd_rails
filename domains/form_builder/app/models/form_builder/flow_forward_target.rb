module FormBuilder
  class FlowForwardTarget < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :source_question_id, :integer
    attribute :target_form_id, :integer
    attribute :target_section_id, :integer
    attribute :target_question_id, :integer

    belongs_to :source_question, class_name: 'FormBuilder::Question'
    belongs_to :target_form, class_name: 'FormBuilder::Form'
    belongs_to :target_section, class_name: 'FormBuilder::Section'
    belongs_to :target_question, class_name: 'FormBuilder::Question'
  end
end
