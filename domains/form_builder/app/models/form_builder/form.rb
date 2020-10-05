# frozen_string_literal: true

module FormBuilder
  # Form Model
  class Form < ApplicationRecord
    attribute :name, :string
    attribute :created_at, :datetime
    attribute :update_at, :datetime
  end
end
