module FormBuilder
  class VarianceCriterium < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :variance_id, :integer
    attribute :variance_attr, :integer
    attribute :variance_attr_set, :json

    belongs_to :variance, class_name: 'FormBuilder::Variance'
  end
end
