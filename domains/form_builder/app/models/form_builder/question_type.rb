module FormBuilder
  class QuestionType < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :name, :string
    attribute :question_id, :integer
    
    belongs_to :form_builder_question, class_name: 'FormBuilder::Question'
  end
end
