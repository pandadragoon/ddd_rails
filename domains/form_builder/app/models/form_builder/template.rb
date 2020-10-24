module FormBuilder
  class Template < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :name, :string
    attribute :family_uuid, :uuid
    attribute :parent_id

    belongs_to :parent, class_name: 'FormBuilder::Template'
  end
end
