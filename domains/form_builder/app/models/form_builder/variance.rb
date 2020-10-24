module FormBuilder
  class Variance < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :target_type, :integer
    attribute :target_uuid, :uuid
    attribute :owner, :integer
    attribute :variance_type, :string

    belongs_to :target_type, class_name: 'FormBuilder::VarianceTargetType'
    belongs_to :owner,  class_name: 'FormBuilder::VarianceOwnerType'
  end
end
