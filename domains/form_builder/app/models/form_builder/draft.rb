module FormBuilder
  class Draft < ApplicationRecord
    REVIEW_STATUS = {
      in_progress: 'In Progress',
      review: 'Review',
      request_changes: 'Request Changes',
      review_approved: 'Review Approved',
      published: 'Published'
    }.freeze

    attribute :uuid, :uuid
    attribute :family_uuid, :uuid
    attribute :form_id, :integer
    attribute :draft_form_id, :integer
    attribute :locked, :boolean
    attribute :locked_by_uuid, :uuid
    attribute :review_status, :string
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime

    belongs_to :form_builder_form, class_name: 'FormBuilder::Form'
  end
end
