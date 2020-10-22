module FormBuilder
  class FormType < ApplicationRecord
    attribute :name, :string
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
end
