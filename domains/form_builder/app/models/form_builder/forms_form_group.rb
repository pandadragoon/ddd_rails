module FormBuilder
  class FormsFormGroup < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
end
