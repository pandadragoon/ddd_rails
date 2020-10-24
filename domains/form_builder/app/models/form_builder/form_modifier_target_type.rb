module FormBuilder
  class FormModifierTargetType < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :name, :string
  end
end
