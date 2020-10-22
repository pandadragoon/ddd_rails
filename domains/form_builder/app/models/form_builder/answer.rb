module FormBuilder
  class Answer < ApplicationRecord
    attribute :uuid, :uuid
    attribute :family_uuid, :uuid
    attribute :parent_id, :integer
    attribute :question_id, :integer
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime

    belongs_to :form_builder_question, class_name: 'FormBuilder::Question'
    belongs_to :parent, class_name: 'FormBuilder::Answer', optional: true
  end
end
