module FormBuilder
  class Instruction < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :parent_id, :integer
    attribute :family_uuid, :uuid
    attribute :question_id, :integer
    attribute :label, :string

    belongs_to :parent, class_name: 'FormBuilder::Instruction'
    belongs_to :form_builder_question, class_name: 'FormBuilder::Question'
  end
end
