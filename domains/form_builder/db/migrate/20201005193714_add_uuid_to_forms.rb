class AddUuidToForms < ActiveRecord::Migration[6.0]
  def change
    add_column :form_builder_forms, :uuid, :uuid, default: "gen_random_uuid()", null: false
  end
end
