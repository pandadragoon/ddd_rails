module FormBuilder
  class Section < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :family_uuid, :uuid
    attribute :name, :string
    attribute :parent_id, :integer
    attribute :template_id, :integer
    attribute :form_id, :integer

    belongs_to :parent, class_name: 'FormBuilder::Section'
  end
end
