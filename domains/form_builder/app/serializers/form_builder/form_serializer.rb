module FormBuilder
  class FormSerializer < ActiveModel::Serializer
    attributes :id, :name, :updated_at, :created_at
  end
end