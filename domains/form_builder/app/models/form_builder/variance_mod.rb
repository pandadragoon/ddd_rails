module FormBuilder
  class VarianceMod < ApplicationRecord
    attribute :uuid, :uuid
    attribute :meta, :json
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :key, :string
    attribute :values, :json
    attribute :variance_id, :integer

    belongs_to :variance, class_name: 'FormBuilder::Variance'
  end
end
