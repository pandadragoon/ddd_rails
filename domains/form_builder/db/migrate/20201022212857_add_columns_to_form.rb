class AddColumnsToForm < ActiveRecord::Migration[6.0]
  def change
    add_column :form_builder_forms, :family_uuid, :uuid, default: "gen_random_uuid()", null: false
    add_column :form_builder_forms, :form_type_id, :integer
    add_column :form_builder_forms, :meta, :json
    add_column :form_builder_forms, :form_published_version_id, :integer
  end
end
